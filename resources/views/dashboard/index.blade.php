@extends('layouts.dashboard')

@section('title')
    {{ trans('dashboard.title.index') }}
@endsection

@section('breadcrumbs')
{{ Breadcrumbs::render('dashboard_home') }}
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <h2>{{ trans('dashboard.greeting.welcome',['name' => Auth::user()->name]) }}</h2>
        </div>
    </div>

    @php
    $list   = ['User','Categories','Posts', 'Tag'];
    $color  = ['success','danger','info','warning'];
    $color  = ['success','danger','info','warning'];
    @endphp
    <br>
    <div style="font-size:25px;font-weight:bold;margin-bottom:0px;
    line-height: 0.9;" id="load_tgl"></div>
    <br>
    <div style="font-size:30px;font-weight:bold;margin-top:0px;
    line-height: 0.9;position:relative;" id="load_jam"></div>
    <br>
    <div class="row">
        @foreach($list as $key_list => $item_list)
        <div class="col-lg">
            <div style="margin-bottom: 0.5rem;" class="card card-body bg-{{$color[$key_list]}} has-bg-image">
                <div class="media media-text-white">
                    <div class="media-body">
                        <h3 class="mb-0 mt-0">{{ $data[$item_list] }}</h3>
                        <span style="font-size:18px;color:#f2f2f2">{{ $item_list }}</span>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <br>
    {{-- <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Posts</div>
                </div>
                <div class="card-body">
                    <div id="grafik1" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Tags</div>
                </div>
                <div class="card-body">
                    <div id="grafik2" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                </div>
            </div>
        </div>
    </div> --}}

@endsection

@section('custom_js')
    <script>
        $(function(){
            load_date_time();
        });
        function load_date_time() {
            var date_now = new Date();
            var tgl = date_now.getDate();
            var bln = date_now.getMonth()+1;
            var thn = date_now.getFullYear();
            var jam = date_now.getHours();
            var mnt = date_now.getMinutes();
            var sec = date_now.getSeconds();

            tgl = tgl<=9?"0"+tgl:tgl;
            bln = bln<=9?"0"+bln:bln;
            jam = jam<=9?"0"+jam:jam;
            mnt = mnt<=9?"0"+mnt:mnt;
            sec = sec<=9?"0"+sec:sec;

            $("#load_tgl").text(tgl+"-"+bln+"-"+thn);
            $("#load_jam").text(jam+":"+mnt+":"+sec);
        }
        setInterval(function() {
            load_date_time();
        }, 500);
    </script>
@endsection
