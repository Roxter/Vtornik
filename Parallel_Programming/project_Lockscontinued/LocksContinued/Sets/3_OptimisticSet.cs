﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocksContinued
{
    //Один из способов снизить затраты на синхронизацию - это воспользоваться возможностью: выполнить 
    //поиск без получения блокировок, заблокировать найденные узлы, а затем подтвердить правильность заблокированных узлов. 
    //Если конфликт синхронизации приводит к блокировке неправильных узлов, снимите блокировки и начните сначала. 
    //Обычно такого рода конфликты случаются редко, поэтому мы называем эту технику оптимистической синхронизацией.
    class OptimisticSet<T>
    {
        private Node<T> _tail = new Node<T>(int.MaxValue); //нода хвост фиктивный
        private Node<T> _head = new Node<T>(int.MinValue); //нода голова фиктивная

        public OptimisticSet()
        {
            _head.Next = _tail; //сначала указатель на следующий у головы равен хвосту
        }

        //проверяет по прежнему ли следующий у pred ссылается на curr
        private bool Validate(Node<T> pred, Node<T> curr)
        {
            Node<T> node = _head; //берем голову в node
            while (node.Key <= pred.Key) //пока у node ключ меньше или равен ключу предыдущего
            {
                //если нода равна предыдущему
                if (node == pred)
                    return pred.Next == curr; //возвращаем, является ли следующий у предыдущего текущим
                node = node.Next; //двигаем ноду на следующий
            }
            return false; //если не прошла валидация
        }

        public bool Add(T item)
        {
            int key = item.GetHashCode(); //получаем хэш добавляемого элемента
            while (true) //бесконечный цикл
            {
                Node<T> pred = _head;//предыдущий указывает на голову
                Node<T> curr = _head.Next; //текущий на следующий у головы
                while (curr.Key < key) //пока хэш добавляемого элемента меньше ключа
                {
                    pred = curr; //сдвигаем предыдущий на текущий
                    curr = curr.Next; //текущий сдвигаем на следующий у текущего
                }
                pred.Lock.Lock();//берем блокировку на предыдущий
                curr.Lock.Lock();//берем блокировку на текущий
                try
                {
                    if (Validate(pred, curr)) //если прошла проверка (что предыдущий ссылается на текущий)
                    {
                        //если ключ уже есть, кричим, что не добавили
                        if (curr.Key == key)
                        {
                            return false;
                        }
                        //иначе
                        else
                        {
                            //формируем новый узел с добавляемым значением
                            Node<T> node = new Node<T>(item)
                            { Next = curr }; //следующий указывает на текущий
                            pred.Next = node; //у предыдущего следующий указывает на новую ноду
                            return true; //говорим, что все хорошо
                        }
                    }
                }

                finally
                {
                    //в любом случае снимаем блокировки
                    pred.Lock.Unlock();
                    curr.Lock.Unlock();
                }

            }
        }


        public bool Remove(T item)
        {
            int key = item.GetHashCode(); //получаем хэш того, что планируем добавить 
            while (true) //бесконечный цикл
            {
                Node<T> pred = _head; //предыдущий равен голове
                Node<T> curr = _head.Next; //текущий равен следующему за головой
                while (curr.Key < key) //пока текущий ключ меньше, того что мы вставляем 
                {
                    pred = curr; //предыдущий двигаем в текущий
                    curr = curr.Next; //текущий передвигаем в следующий за текущим
                }
                pred.Lock.Lock();//берем блокировку на текущий
                curr.Lock.Lock();//берем блокировку на текущий
                try
                {
                    if (Validate(pred, curr)) //если предыдущий до сих пор ссылается на текущий 
                    {
                        //если текущий ключ не равен тому, что мы искали
                        if (curr.Key != key)
                        {
                            return false; //кричим, что удалять нечего
                        }
                        else
                        {
                            //иначе перекидываем следующий у pred на следующий у curr
                            pred.Next = curr.Next;
                            return true; //говорим, что удалили
                        }
                    }
                }
                finally
                {
                    //в любом случае снимаем блокировки
                    curr.Lock.Unlock();
                    pred.Lock.Unlock();
                }
            }
        }
        //Поскольку мы игнорируем блокировки, которые защищают одновременные модификации, 
        //каждый из вызовов метода может проходить узлы, которые были удалены из списка. 
        //Тем не менее, отсутствие помех подразумевает, что после того, 
        //как узел был отсоединен от списка, значение его следующего поля не изменяется, 
        //поэтому следование последовательности таких ссылок в конечном итоге возвращает вас к списку. 

        public bool Сontains(T item)
        {
            int key = item.GetHashCode(); //получаем хэш код того, что ищется
            while (true)//бесконечный цикл
            {
                Node<T> pred = _head; //в предыдущий кладем голову
                Node<T> curr = _head.Next; //в текущий кладем следующий за головой
                while (curr.Key < key) //пока ключ текущего меньше ключа, который ищется
                {
                    pred = curr; //предыдущий двигаем в текущий
                    curr = curr.Next; //текущий двигаем в следующий у текущего
                }
                pred.Lock.Lock();//берем блокировку на предыдущий
                try
                {
                    curr.Lock.Lock();//берем блокировку на текущий
                    try
                    {
                        if (Validate(pred, curr))// если прошла проверка, что предыдущий до сих пор ссылается на текущий
                        {
                            return curr.Key == key;//возвращаем равен ли ключ текущего с ключом, который мы ищем
                        }
                    }
                    finally
                    {
                        //в любом случае снимаем блокировку с текущего
                        curr.Lock.Unlock();
                    }
                }
                finally
                {
                    //в любом случае снимаем блокировку с предыдущего
                    pred.Lock.Unlock();
                }
            }
        }
        //голодание происходит редко
    }
}
