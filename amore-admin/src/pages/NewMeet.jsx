import React from 'react'
import Sidebar from '../components/Sidebar'
import { useState } from 'react';
import { Link } from 'react-router-dom';

export default function NewMeet() {

  const [file, setFile] = useState();
  function handleChange(e) {
    console.log(e.target.files);
    setFile(URL.createObjectURL(e.target.files[0]));
  }

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
                          <h5>Meet Point Details</h5>
                        </div>
                        <div class="card-body">

                          <div class="row">
                            <div class="col-md-6">
                              <form>
                                <div class="form-group">
                                  <label for="exampleInputEmail1" className='Ht'> Meet Point Image </label>
                                  <br />
                                  <div className="row d-flex flex-row justify-content-center">
                                    <img src={file} className="img-thumbnail previewImg" />


                                    <div class="input-group mb-3 mt-3 uploadImage">
                                      <label class="input-group-text" for="inputGroupFile01">Upload</label>
                                      <input type="file" class="form-control" id="inputGroupFile01"
                                        onChange={handleChange} />
                                    </div>


                                  </div>


                                  <div class="form-group">
                                    <label className='Ht'>Meet Point Name</label>
                                    <input type="text" class="form-control" placeholder="Meet Point Name" />
                                  </div>
                                  <div class="form-group">
                                    <label className='Ht'>Meet Point Description</label>
                                    {/* <input type="text" class="form-control"  /> */}
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" placeholder="Meet Point Name"></textarea>
                                  </div>



                                </div>




                              </form>
                            </div>
                            <div class="col-md-6">
                              <form>

                                <div class="form-group">
                                  <label className='Ht'>Date & Time</label>
                                  <input type="text" class="form-control" placeholder="Date & Time of Event" />
                                </div>

                                

                                <div class="form-group mt-5">
                                  <label className='Ht'>Location</label>
                                  <input type="text" class="form-control" placeholder="Meet Point" />
                                </div>

                                <div class="form-group mt-5">
                                  <label className='Ht'>Latitude</label>
                                  <input type="text" class="form-control" placeholder="Latitude"/>
                                </div>
                                <div class="form-group mt-5">
                                  <label className='Ht'>longitude</label>
                                  <input type="text" class="form-control" placeholder="longitude" />
                                </div>
                                
                                <div className="d-flex justify-content-end mt-5">
                                  <Link to="/meet">
                                    <button type="submit" class="btn btn-secondary">Cancel</button>
                                  </Link>
                                  <Link to="/meet">
                                    <button type="submit" class="btn btn-primary">Add new Meet Point</button>
                                    </Link>
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
