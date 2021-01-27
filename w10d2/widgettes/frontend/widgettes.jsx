import React    from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock';
import Tabs from './tabs';



class Widgette extends React.Component {

  tabs(){
    return ["whatup?!", "goals" ].map( 
      (title) => {return {title}});
  }

  render() {
    return (
      <div>
        <p>hello world from widgettes</p>
        <Tabs tabs={this.tabs()}/>
        <Clock />
        </div>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  const reactRoot = document.getElementById('root');
    console.log("hello world");
  // ReactDOM.render(<h1>Our first piece of React!!!!!!!</h1>,reactRoot);
  ReactDOM.render(<Widgette />, reactRoot);
});




