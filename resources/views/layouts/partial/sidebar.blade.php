<div class="sidebar" data-color="purple" data-image="{{ asset('backend/img/sidebar-1.jpg') }}">

    <div class="logo">
        <a href="#" class="simple-text">
            Warunk Emuss
        </a>
    </div>
    <div class="sidebar-wrapper">
        <ul class="nav">
            <li class="{{ Request::is('admin/dashboard*') ? 'active': '' }}">
                <a href="{{ route('admin.dashboard') }}">
                   
                    <p>Dashboard</p>
                </a>
            </li>
            <li class="{{ Request::is('admin/slider*') ? 'active': '' }}">
                <a href="{{ route('slider.index') }}">
               
                    <p>Slider</p>
                </a>
            </li>
            <li class="{{ Request::is('admin/category*') ? 'active': '' }}">
                <a href="{{ route('category.index') }}">
           
                    <p>Categori</p>
                </a>
            </li>
            <li class="{{ Request::is('admin/item*') ? 'active': '' }}">
                <a href="{{ route('item.index') }}">
         
                    <p>Item</p>
                </a>
            </li>
            <li class="{{ Request::is('admin/reservation*') ? 'active': '' }}">
                <a href="{{ route('reservation.index') }}">
     
                    <p>Pemesanan</p>
                </a>
            </li>
            <li class="{{ Request::is('admin/contact*') ? 'active': '' }}">
                <a href="{{ route('contact.index') }}">
       
                    <p>Contact Message</p>
                </a>
            </li>

        </ul>
    </div>
</div>