import React from 'react';

// const allTodos = ({ todos }) => {
//   const todosArr = Object.values({todos});
//   return todosArr;
// }

// export default allTodos;
export const allTodos = ({ toDos }) => (
    console.log("todos: " + toDos);
    Object.keys(toDos).map(id => toDos[id])
)



