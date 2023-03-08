import React from 'react'
// import Sidebar from '../components/Sidebar'
import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';

import { useNavigate } from "react-router-dom";

export default function NewEvent1() {
  // const[count,setCount]=useState("")
  let navigate = useNavigate();
  // const [count, setCount] = useState("");

  const [event_img, setEventImg] = useState('')
  const [name, setName] = useState('')
  const [description, setDescription] = useState('')
  const [address, setAddress] = useState('')
  const [latitude, setLatitude] = useState('')
  const [longitude, setLongitude] = useState('')
  const [scheduledOn, setScheduleOn] = useState('')
  const [capacity, setCapacity] = useState('')





  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const formdata = new FormData();
      formdata.append('event_img', event_img);
      formdata.append('name', name);
      formdata.append('description', description);
      formdata.append('address', address);
      formdata.append('latitude', latitude);
      formdata.append('longitude', longitude);
      formdata.append('scheduled_on', scheduledOn);
      formdata.append('capacity', capacity);

      console.log(formdata);


      //   method: "post";
      //  const  url: "http://10.120.102.192:8000/events/";
      //   data: formdata;
      const config = {
        headers: {
          "content-type": "multipart/form-data",
          "accept": "application/json"
        }
      };

      var result = await axios.post("http://10.120.102.192:8000/events/", formdata, config);
      console.log(result);


      console.log(result.data.event_img[0])

      // console.log(response)

    } catch (error) {
      console.error(error);
    }
    // navigate('/event', { replace: true });
    // window.location.reload()
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

      <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
          <div class="pcoded-content">
            <div class="pcoded-inner-content">
              {/* <!-- [ breadcrumb ] start --> */}
              <div class="page-header">
                <div class="page-block">
                  <div class="row align-items-center">
                    <div class="col-md-12">
                      <div class="page-header-title">
                        <h2 class="m-b-10">Create New Event</h2>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
              {/* <!-- [ breadcrumb ] end --> */}
              <div class="main-body">
                <div class="page-wrapper">
                  {/* <!-- [ Main Content ] start --> */}
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="card">
                        <div class="card-header">
                          <h5>Event Details</h5>
                        </div>
                        <div class="card-body">

                          <div class="row">
                            <div class="col-md-6">
                              <form >
                                <div class="form-group">
                                  <label for="exampleInputEmail1" className='Ht'> Event Image </label>
                                  <br />
                                  <div className="row d-flex flex-row justify-content-center">

                                    <div class="input-group mb-3 mt-3 uploadImage">
                                      <input type="file" class="form-control" id="inputGroupFile01" 
                                      onChange={(e)=> setEventImg(e.target.event_img[0])}
                                       multiple
                                      />
                                    </div>

                                  </div>

                                  <div class="form-group">
                                    <label className='Ht'>Event Name</label>
                                    <input type="text" class="form-control" value={name} onChange={(e)=> setName(e.target.value)} placeholder="Event Name" />
                                  </div>
                                  <div class="form-group">
                                    <label className='Ht'>Event Description</label>
                                    {/* <input type="text" class="form-control"  /> */}
                                    <textarea class="form-control" id="exampleFormControlTextarea1" value={description} onChange={(e)=> setDescription(e.target.value)}  rows="3" placeholder="Event Name" ></textarea>
                                  </div>
                                </div>
                              </form>
                            </div>
                            <div class="col-md-6">
                              <form>
                                <div class="form-group">
                                  <label className='Ht'>Date & Time</label>
                                  <input type="text" class="form-control" value={scheduledOn}  onChange={(e)=> setScheduleOn(e.target.value)}  placeholder="Date & Time of Event" />
                                </div>

                                <div class="form-group mt-5">
                                  <label className='Ht'>Capacity</label>
                                  <input type="number" class="form-control" value={capacity} onChange={(e)=> setCapacity(e.target.value)}  placeholder="Event Capacity"  />
                                </div>

                                <div class="form-group mt-5 ">
                                  <label className='Ht'>Location</label>
                                  <input type="text" class="form-control inputMeet" value={address} onChange={(e)=> setAddress(e.target.value)}  placeholder="Event Location" />
                                </div>

                                <div class="form-group mt-5">
                                  <label className='Ht'>Latitude</label>
                                  <input type="text" class="form-control" value={latitude} onChange={(e)=> setLatitude(e.target.value)}  placeholder="Latitude" />
                                </div>
                                <div class="form-group">
                                  <label className='Ht'>longitude</label>
                                  <input type="text" class="form-control" value={longitude} onChange={(e)=> setLongitude(e.target.value)}  placeholder="longitude" />
                                </div>
                                
                                <div className="d-flex justify-content-end mt-5">
                                  <Link to="/event">
                                    <button type="submit" class="btn btn-secondary">Cancel</button>
                                  </Link>

                                  <button type="submit" class="btn btn-primary"  onClick={(e) => handleSubmit(e)}>Add new Event</button>

                                </div>
                              </form>
                            </div>
                          </div>

                        </div>
                      </div>
                    </div>
                    {/* <!-- Input group --> */}

                  </div>
                </div>
                {/* <!-- [ Main Content ] end --> */}
              </div>
            </div>
          </div>
        </div>
      </div>



    </>


  )
}
