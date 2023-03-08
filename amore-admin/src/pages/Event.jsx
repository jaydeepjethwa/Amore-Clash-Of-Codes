import React, { useEffect } from 'react'
import Sidebar from '../components/Sidebar'
import { useState } from 'react';
import logo from "../assets/images/AmoreIcon.png";
import axios from 'axios';
import { Link } from 'react-router-dom';
import QRCode from "react-qr-code";


export default function Event() {
    const [events, setEvents] = useState([]);
    const [en, setEn] = useState([]);
    const [ei, setEi] = useState([]);

    useEffect(() => {
        fetchEvents();
    }, []);


    const fetchEvents = () => {
        axios.get("http://10.120.102.192:8000/events/")
            .then((response) => {
                // console.log(response.data)
                setEvents(response.data)
            })
    }

    const [file, setFile] = useState();
    function handleChange(e) {
        console.log(e.target.files);
        setFile(URL.createObjectURL(e.target.files[0]));
    }
    const handleClick = (e) => {
        
        const en = e.currentTarget.getAttribute("ename");
        const ei = e.currentTarget.getAttribute("eid");
        setEn (en)
        setEi(ei)
        console.log(setEn);
        console.log(setEi);
    };

    return (
        <>
            {/* <!-- [ Pre-loader ] start --> */}
            <div class="loader-bg">
                <div class="loader-track">
                    <div class="loader-fill"></div>
                </div>
            </div>
            {/* // <!-- [ Pre-loader ] End --> */}

            <section class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="page-header">
                                <div class="page-block">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <div class="page-header-title">
                                                <h2 class="m-b-10">Events List</h2>
                                            </div>
                                            <div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            {/* <!-- [ breadcrumb ] start --> */}

                            {/* <!-- [ breadcrumb ] end --> */}
                            <div class="main-body">
                                <div class="page-wrapper">
                                    {/* <!-- [ Main Content ] start --> */}
                                    <div class="row">
                                        {/* <!-- [ basic-table ] start --> */}

                                        {/* <!-- [ basic-table ] end --> */}

                                        {/* <!-- [ Hover-table ] start --> */}
                                        <div class="col-xl-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <div className="row">
                                                        <div className="col">
                                                            <h5>Events</h5>
                                                            <span class="d-block m-t-5">All the Events</span>
                                                        </div>
                                                        <div className="col d-flex justify-content-end">
                                                            <Link to="/event/new">
                                                                <button type="button" class="btn btn-primary mt-3" ><span class="pcoded-micon"><i class="feather icon-add"></i></span>Add New Event</button>
                                                            </Link>

                                                        </div>
                                                    </div>


                                                </div>



                                                <div class="card-block table-border-style">
                                                    <div className="row">
                                                        {
                                                            events.map((value) => {
                                                                return (
                                                                    <div className="col-3" >
                                                                        <div class="card" style={{ width: "23rem" }}>
                                                                            <div className="d-flex justify-content-cente  ">
                                                                                {value.Photo ?
                                                                                    <img class="card-img-top eventImg mt-3" src={`data:image/png;base64,${value.Photo}`} /> :
                                                                                    ''}
                                                                            </div>

                                                                            {/* <img src={logo} class="card-img-top eventImg" alt="..." /> */}
                                                                            <div class="card-body">
                                                                                <h5 class="card-title">{value.Name}</h5>
                                                                                <p class="cad-text edes">{value.Description}</p>
                                                                            </div>
                                                                            <ul class="list-group list-group-flush ">
                                                                                
                                                                                <li class="list-group-item">Event Capacity: {value.Capacity}</li>
                                                                                <li class="list-group-item">Location: {value.Address}</li>
                                                                                <li class="list-group-item">Date & Time: {value.ScheduledOn}</li>
                                                                            </ul>

                                                                            {/* <!-- Button trigger modal --> */}
                                                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" ename={value.Name} eid={value.EventId} onClick={handleClick}>
                                                                                Show QR-Code
                                                                            </button>

                                                                            {/* <!-- Modal --> */}


                                                                        </div>
                                                                    </div>
                                                                );
                                                            })
                                                        }


                                                    </div>
                                                    {/* modol */}
                                                    <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLabel">{en}</h5>
                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body d-flex justify-content-center">
                                                                    <QRCode value={ei.toString()} />

                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                        {/* <!-- [ Hover-table ] end --> */}

                                        {/* <!-- [ stiped-table ] start --> */}

                                        {/* <!-- [ stiped-table ] end --> */}
                                    </div>
                                    {/* <!-- [ Main Content ] end --> */}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


        </>


    )
}
