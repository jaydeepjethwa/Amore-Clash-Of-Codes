import React from 'react'
import AmoreIcon from "../assets/images/AmoreIcon.png"
import { Link } from 'react-router-dom'

export default function Sidebar() {
  return (
    // <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
               <a href="other" class="b-brand">
                   <div class="">
                       {/* <i class="feather icon-trending-up"></i> */}
                       <img src={AmoreIcon} alt="" className='dashIcon'/>
                   </div>
                   <span class="b-title ">Amore Admin</span>
               </a>
               <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
           </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li class="nav-item pcoded-menu-caption">
                        <label>Navigation</label>
                    </li>
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item ">
                        <a href="event" class="nav-link "><span class="pcoded-micon"><i class="feather icon-radio"></i></span><span class="pcoded-mtext stext">Events</span></a>
                    </li>
                    
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item">
                        <a  href="meet" class="nav-link "><span class="pcoded-micon"><i class="feather icon-users   "></i></span><span class="pcoded-mtext stext">Meetup Point</span></a>
                    </li>
                    
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item">
                        <a href="other" class="nav-link "><span class="pcoded-micon"><i class="feather icon-activity"></i></span><span class="pcoded-mtext stext">Others</span></a>
                    </li>
                    
                    
                </ul>
            </div>
        </div>
    </nav>
    // <!-- [ navigation menu ] end -->

  )
}
