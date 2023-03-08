import React, { useEffect } from 'react'
import Sidebar from '../components/Sidebar'
import { useState } from 'react';
import logo from "../assets/images/AmoreIcon.png";
import axios from 'axios';
import { Link } from 'react-router-dom';
import QRCode from "react-qr-code";


export default function Meet() {
  
  const [events, setEvents] = useState([]);
    useEffect(() => {
        fetchEvents();
    }, []);


    const fetchEvents = () => {
        axios.get("http://10.120.102.192:8000/hotels/")
            .then((response) => {
                console.log(response.data)
                setEvents(response.data)
            })
    }

    const [file, setFile] = useState();
    function handleChange(e) {
        console.log(e.target.files);
        setFile(URL.createObjectURL(e.target.files[0]));
    }

    return (
        <>
            {/* <!-- [ Pre-loader ] start --> */}
            
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
                                                <h2 class="m-b-10">Meetup Point</h2>
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
                                                            <h5>Restaraunts & Hotels</h5>
                                                            <span class="d-block m-t-5">Meet Locations</span>
                                                        </div>
                                                        <div className="col d-flex justify-content-end">
                                                            <Link to="/meet/new">
                                                                <button type="button" class="btn btn-primary mt-3" ><span class="pcoded-micon"><i class="feather icon-add"></i></span>Add New Meet Point</button>
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
                                                                                
                                                                                
                                                                                <li class="list-group-item">Location: {value.Address}</li>
                                                                              
                                                                            </ul>

                                                                            {/* <!-- Button trigger modal --> */}
                                                                            

                                                                            {/* <!-- Modal --> */}


                                                                        </div>
                                                                    </div>
                                                                );
                                                            })
                                                        }


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
