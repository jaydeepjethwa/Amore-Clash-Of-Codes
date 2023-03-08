import "./assets/fonts/fontawesome/css/fontawesome-all.min.css";
import "./assets/plugins/animation/css/animate.min.css";
import "./assets/css/style.css";
import { Routes, Route, BrowserRouter } from "react-router-dom";


import Sidebar from "./components/Sidebar";
import Event from "./pages/Event";
import NewEvent from "./pages/NewEvent"
import Meet from "./pages/Meet";
import NewMeet from "./pages/NewMeet"
import Other from "./pages/Other"
import NewEvent1 from "./pages/NewEvent1";



function App() {
  return (
    <>
      <Sidebar />
      {/* <BrowserRouter>
    <Routes>
      <Route exact="/" path={<Event/>} />
    </Routes>
    </BrowserRouter> */}
      {/* <Event/> */}
      <BrowserRouter>
        <Routes>

          <Route path="event">
            <Route index element={<Event />} />

            <Route
              path="new"
              element={<NewEvent />}
            />
          </Route>

          <Route path="meet">
            <Route index element={<Meet />} />

            <Route
              path="new"
              element={<NewMeet />}
            />
          </Route>
          <Route path="other">
            <Route index element={<Other />} />

          </Route>
          <Route path="event1" element={<NewEvent1/>}/>

        </Routes>
      </BrowserRouter>
    </>


  );
}

export default App;
