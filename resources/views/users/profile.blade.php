@extends('layout.users.app')
@section('title')
    Profile
@endsection
@section('css')
    <style class="css">
      @media(min-width:800px){
          main{
            padding-left:15vw !important;
            padding-right:15vw !important;
            
        }
      }
    </style>
@endsection
@section('main')
    <section class="column w-full p-10 g-10">
        <div class="w-full g-10 max-w-500 x-auto column bg-primary p-10 br-10">
            <div class="row align-center space-between w-full g-10">
                <img src="{{ asset('images/avatar.svg') }}" alt="AVATAR" height="70" width="70" class="border-4 border-color-white circle clip-circle">
                <strong class="desc right-auto c-white">{{ ucfirst(Auth::guard('users')->user()->username) }}</strong>
            </div>
            <div class="bg-primary-transparent w-full p-10 grid grid-2 c-white br-10">
               <div class="column w-full g-5 align-center">
                 <span>Recharge Balance</span>
                  <strong class="font-1">&#8358;{{ number_format(Auth::guard('users')->user()->deposit,2) }}</strong>
               </div>
                <div class="column w-full g-5 align-center">
                 <span>Withdrawable Balance</span>
                  <strong class="font-1">&#8358;{{ number_format(Auth::guard('users')->user()->withdrawal,2) }}</strong>
               </div>
            </div>
        </div>
        <div class="row top-10 align-center g-5">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#4caf50" viewBox="0 0 256 256"><path d="M198.63,57.37a32,32,0,0,0-45.19-.06L141.79,69.52a8,8,0,0,1-11.58-11l11.72-12.29a1.59,1.59,0,0,1,.13-.13,48,48,0,0,1,67.88,67.88,1.59,1.59,0,0,1-.13.13l-12.29,11.72a8,8,0,0,1-11-11.58l12.21-11.65A32,32,0,0,0,198.63,57.37ZM114.21,186.48l-11.65,12.21a32,32,0,0,1-45.25-45.25l12.21-11.65a8,8,0,0,0-11-11.58L46.19,141.93a1.59,1.59,0,0,0-.13.13,48,48,0,0,0,67.88,67.88,1.59,1.59,0,0,0,.13-.13l11.72-12.29a8,8,0,1,0-11.58-11ZM216,152H192a8,8,0,0,0,0,16h24a8,8,0,0,0,0-16ZM40,104H64a8,8,0,0,0,0-16H40a8,8,0,0,0,0,16Zm120,80a8,8,0,0,0-8,8v24a8,8,0,0,0,16,0V192A8,8,0,0,0,160,184ZM96,72a8,8,0,0,0,8-8V40a8,8,0,0,0-16,0V64A8,8,0,0,0,96,72Z"></path></svg>
             <strong class="desc">General</strong>
        </div>
        <div class="w-full box-shadow no-select br-10 column">
            <div onclick="spa(event,'{{ url('users/bank') }}')" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M24,104H48v64H32a8,8,0,0,0,0,16H224a8,8,0,0,0,0-16H208V104h24a8,8,0,0,0,4.19-14.81l-104-64a8,8,0,0,0-8.38,0l-104,64A8,8,0,0,0,24,104Zm40,0H96v64H64Zm80,0v64H112V104Zm48,64H160V104h32ZM128,41.39,203.74,88H52.26ZM248,208a8,8,0,0,1-8,8H16a8,8,0,0,1,0-16H240A8,8,0,0,1,248,208Z"></path></svg>

                <span class="right-auto">Add Bank Account</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
             <div onclick="spa(event,'{{ url('users/recharge') }}')" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M128,24A104,104,0,1,0,232,128,104.11,104.11,0,0,0,128,24Zm0,192a88,88,0,1,1,88-88A88.1,88.1,0,0,1,128,216Zm48-88a8,8,0,0,1-8,8H136v32a8,8,0,0,1-16,0V136H88a8,8,0,0,1,0-16h32V88a8,8,0,0,1,16,0v32h32A8,8,0,0,1,176,128Z"></path></svg>
                <span class="right-auto">Recharge</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
            <div class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
               <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M208,48H48A24,24,0,0,0,24,72V184a24,24,0,0,0,24,24H208a24,24,0,0,0,24-24V72A24,24,0,0,0,208,48ZM40,96H216v16H160a8,8,0,0,0-8,8,24,24,0,0,1-48,0,8,8,0,0,0-8-8H40Zm8-32H208a8,8,0,0,1,8,8v8H40V72A8,8,0,0,1,48,64ZM208,192H48a8,8,0,0,1-8-8V128H88.8a40,40,0,0,0,78.4,0H216v56A8,8,0,0,1,208,192Z"></path></svg>
                <span class="right-auto">Withdraw Funds</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
            <div onclick="spa(event,'{{ url('users/wallet') }}')" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M136,80v43.47l36.12,21.67a8,8,0,0,1-8.24,13.72l-40-24A8,8,0,0,1,120,128V80a8,8,0,0,1,16,0Zm-8-48A95.44,95.44,0,0,0,60.08,60.15C52.81,67.51,46.35,74.59,40,82V64a8,8,0,0,0-16,0v40a8,8,0,0,0,8,8H72a8,8,0,0,0,0-16H49c7.15-8.42,14.27-16.35,22.39-24.57a80,80,0,1,1,1.66,114.75,8,8,0,1,0-11,11.64A96,96,0,1,0,128,32Z"></path></svg>
                <span class="right-auto">Transaction History</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
             <div onclick="spa(event,'{{ url('users/invite') }}')" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M237.66,106.35l-80-80A8,8,0,0,0,144,32V72.35c-25.94,2.22-54.59,14.92-78.16,34.91-28.38,24.08-46.05,55.11-49.76,87.37a12,12,0,0,0,20.68,9.58h0c11-11.71,50.14-48.74,107.24-52V192a8,8,0,0,0,13.66,5.65l80-80A8,8,0,0,0,237.66,106.35ZM160,172.69V144a8,8,0,0,0-8-8c-28.08,0-55.43,7.33-81.29,21.8a196.17,196.17,0,0,0-36.57,26.52c5.8-23.84,20.42-46.51,42.05-64.86C99.41,99.77,127.75,88,152,88a8,8,0,0,0,8-8V51.32L220.69,112Z"></path></svg>
               <span class="right-auto">Refer and Earn</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
             <div onclick="spa(event,'{{ url('users/team') }}')" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
             <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M117.25,157.92a60,60,0,1,0-66.5,0A95.83,95.83,0,0,0,3.53,195.63a8,8,0,1,0,13.4,8.74,80,80,0,0,1,134.14,0,8,8,0,0,0,13.4-8.74A95.83,95.83,0,0,0,117.25,157.92ZM40,108a44,44,0,1,1,44,44A44.05,44.05,0,0,1,40,108Zm210.14,98.7a8,8,0,0,1-11.07-2.33A79.83,79.83,0,0,0,172,168a8,8,0,0,1,0-16,44,44,0,1,0-16.34-84.87,8,8,0,1,1-5.94-14.85,60,60,0,0,1,55.53,105.64,95.83,95.83,0,0,1,47.22,37.71A8,8,0,0,1,250.14,206.7Z"></path></svg>
               <span class="right-auto">My Team</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
            <div onclick="window.open('{{ $general_settings->whatsapp_group }}')" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M187.58,144.84l-32-16a8,8,0,0,0-8,.5l-14.69,9.8a40.55,40.55,0,0,1-16-16l9.8-14.69a8,8,0,0,0,.5-8l-16-32A8,8,0,0,0,104,64a40,40,0,0,0-40,40,88.1,88.1,0,0,0,88,88,40,40,0,0,0,40-40A8,8,0,0,0,187.58,144.84ZM152,176a72.08,72.08,0,0,1-72-72A24,24,0,0,1,99.29,80.46l11.48,23L101,118a8,8,0,0,0-.73,7.51,56.47,56.47,0,0,0,30.15,30.15A8,8,0,0,0,138,155l14.61-9.74,23,11.48A24,24,0,0,1,152,176ZM128,24A104,104,0,0,0,36.18,176.88L24.83,210.93a16,16,0,0,0,20.24,20.24l34.05-11.35A104,104,0,1,0,128,24Zm0,192a87.87,87.87,0,0,1-44.06-11.81,8,8,0,0,0-6.54-.67L40,216,52.47,178.6a8,8,0,0,0-.66-6.54A88,88,0,1,1,128,216Z"></path></svg>
                <span class="right-auto">Whatsapp Community</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
            <div onclick="window.open('{{ $general_settings->telegram_group }}')" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M228.88,26.19a9,9,0,0,0-9.16-1.57L17.06,103.93a14.22,14.22,0,0,0,2.43,27.21L72,141.45V200a15.92,15.92,0,0,0,10,14.83,15.91,15.91,0,0,0,17.51-3.73l25.32-26.26L165,220a15.88,15.88,0,0,0,10.51,4,16.3,16.3,0,0,0,5-.79,15.85,15.85,0,0,0,10.67-11.63L231.77,35A9,9,0,0,0,228.88,26.19Zm-61.14,36L78.15,126.35l-49.6-9.73ZM88,200V152.52l24.79,21.74Zm87.53,8L92.85,135.5l119-85.29Z"></path></svg>
               <span class="right-auto">Telegram Community</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
        </div>
         <div class="row top-10 align-center g-5">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#4caf50" viewBox="0 0 256 256"><path d="M230.92,212c-15.23-26.33-38.7-45.21-66.09-54.16a72,72,0,1,0-73.66,0C63.78,166.78,40.31,185.66,25.08,212a8,8,0,1,0,13.85,8c18.84-32.56,52.14-52,89.07-52s70.23,19.44,89.07,52a8,8,0,1,0,13.85-8ZM72,96a56,56,0,1,1,56,56A56.06,56.06,0,0,1,72,96Z"></path></svg>
              <strong class="desc">Account</strong>
        </div>
        <div class="w-full box-shadow no-select br-10 column">
           
            <div onclick="SlideUp()" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
             <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M128,24A104,104,0,1,0,232,128,104.11,104.11,0,0,0,128,24Zm0,192a88,88,0,1,1,88-88A88.1,88.1,0,0,1,128,216Zm40-104a40,40,0,1,0-65.94,30.44L88.68,172.77A8,8,0,0,0,96,184h64a8,8,0,0,0,7.32-11.23l-13.38-30.33A40.14,40.14,0,0,0,168,112ZM136.68,143l11,25.05H108.27l11-25.05A8,8,0,0,0,116,132.79a24,24,0,1,1,24,0A8,8,0,0,0,136.68,143Z"></path></svg>
               <span class="right-auto">Change Password</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
             <div onclick="window.location.href='{{ url('users/logout') }}'" class="row pointer clip-10 space-between p-10 align-center g-10 w-full">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="red" viewBox="0 0 256 256"><path d="M120,216a8,8,0,0,1-8,8H48a8,8,0,0,1-8-8V40a8,8,0,0,1,8-8h64a8,8,0,0,1,0,16H56V208h56A8,8,0,0,1,120,216Zm109.66-93.66-40-40a8,8,0,0,0-11.32,11.32L204.69,120H112a8,8,0,0,0,0,16h92.69l-26.35,26.34a8,8,0,0,0,11.32,11.32l40-40A8,8,0,0,0,229.66,122.34Z"></path></svg>
             <span class="right-auto">Logout</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#708090" viewBox="0 0 256 256"><path d="M181.66,133.66l-80,80a8,8,0,0,1-11.32-11.32L164.69,128,90.34,53.66a8,8,0,0,1,11.32-11.32l80,80A8,8,0,0,1,181.66,133.66Z"></path></svg>

            </div>
        </div>
    </section>
@endsection
@section('slideup_child')
    <form action="{{ url('users/post/password/update/process') }}" method="POST" onsubmit="PostRequest(event,this,MyFunc.Updated)" class="column w-full g-10 p-10 password_form">
        
        <div class="row g-10 align-center">
             <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--primary)" viewBox="0 0 256 256"><path d="M128,24A104,104,0,1,0,232,128,104.11,104.11,0,0,0,128,24Zm0,192a88,88,0,1,1,88-88A88.1,88.1,0,0,1,128,216Zm40-104a40,40,0,1,0-65.94,30.44L88.68,172.77A8,8,0,0,0,96,184h64a8,8,0,0,0,7.32-11.23l-13.38-30.33A40.14,40.14,0,0,0,168,112ZM136.68,143l11,25.05H108.27l11-25.05A8,8,0,0,0,116,132.79a24,24,0,1,1,24,0A8,8,0,0,0,136.68,143Z"></path></svg>
            
             <span>Update Password</span>
           
        </div>
        <hr>
        <input type="hidden" value="{{ @csrf_token() }}" name="_token" class="input">
          <label for="">Current Password</label>
        <div class="cont w-full h-50 br-10 border-1 border-color-silver">
          
            <input type="password" name="current" placeholder="Enter current password" class="inp no-border w-full h-full bg-dim input br-10">
        </div>
          <label for="">New Password</label>
        <div class="cont w-full h-50 br-10 border-1 border-color-silver">
          
            <input type="password" name="new" placeholder="Enter new password" class="inp no-border w-full h-full bg-dim input br-10">
        </div>
          <label for="">Confirm New Password</label>
        <div class="cont w-full h-50 br-10 border-1 border-color-silver">
          
            <input type="password" name="confirm" placeholder="Re-Type new password" class="inp no-border w-full h-full bg-dim input br-10">
        </div>
        <button class="post">Update Password</button>
    </form>
@endsection
@section('js')
    <script class="js">
        window.MyFunc = {
            Updated : function(response){
                let data=JSON.parse(response);
                if(data.status == 'success'){
                    HideSlideUp();
                    document.querySelector('.password_form').reset();
                }
            }
        }
    </script>
@endsection