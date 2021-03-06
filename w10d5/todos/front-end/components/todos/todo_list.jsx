import React from 'react';
import TodoItem from './todo_list_item';
import TodoForm from './todo_form';

const todoIndex = (props) => {
    return(
        <div> 
            <h1>EVERYTHING TODO </h1>
            <ul>
                {props.todos.map((toDo) => (
                    <TodoItem 
                    key={toDo.id} 
                    todo={toDo} 
                    removeTodo={props.removeTodo}
                    receiveTodo={props.receiveTodo} />
                ))}
            </ul>
        <TodoForm receiveTodo={props.receiveTodo}/>
        </div>
    );
}
export default todoIndex;