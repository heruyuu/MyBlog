<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
    <div class="sb-sidenav-menu">
        <div class="nav">
            {{-- Link : Dashboard --}}
            <a class="nav-link {{ set_active('dashboard.index') }}" href="{{ route('dashboard.index') }}">
                <div class="sb-nav-link-icon">
                    <i class="fas fa-tachometer-alt"></i>
                </div>
                {{ trans('dashboard.link.dashboard') }}
            </a>
            {{-- Menu : Master --}}
            <div class="sb-sidenav-menu-heading">{{ trans('dashboard.menu.master') }}</div>
            {{-- Menu : Posts --}}
            @can('manage_posts')
                <a class="nav-link {{ set_active(['posts.index', 'posts.create', 'posts.show', 'posts.edit']) }}"
                    href="{{ route('posts.index') }}">
                        <div class="sb-nav-link-icon">
                            <i class="far fa-newspaper"></i>
                        </div>
                        {{ trans('dashboard.link.posts') }}
                </a>
            @endcan
            {{-- Menu : Categories --}}
            @can('manage_categories')
                <a class="nav-link {{ set_active(['categories.index', 'categories.create', 'categories.edit', 'categories.show']) }}"
                    href="{{ route('categories.index') }}">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-bookmark"></i>
                        </div>
                        {{ trans('dashboard.link.categories') }}
                </a>
            @endcan
            {{-- Menu : tags --}}
            @can('manage_tags')
                <a class="nav-link {{ set_active(['tags.index', 'tags.create', 'tags.edit', 'tags.show']) }}"
                    href="{{ route('tags.index') }}">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-tags"></i>
                        </div>
                        {{ trans('dashboard.link.tags') }}
                </a>
            @endcan
            {{-- Menu : User Permision --}}
            <div class="sb-sidenav-menu-heading">{{ trans('dashboard.menu.user_permision') }}</div>
            {{-- Menu : Users --}}
            @can('manage_users')
                <a class="nav-link {{ set_active(['users.index', 'users.create', 'users.edit']) }}" href="{{ route('users.index') }}">
                    <div class="sb-nav-link-icon">
                        <i class="fas fa-user"></i>
                    </div>
                    {{ trans('dashboard.link.users') }}
                </a>
                @endcan
            {{-- Menu : Roles --}}
            @can('manage_roles')
                <a href="{{ route('roles.index') }}" class="nav-link {{ set_active(['roles.index', 'roles.show', 'roles.create', 'roles.edit']) }}">
                    <div class="sb-nav-link-icon">
                        <i class="fas fa-user-shield"></i>
                    </div>
                    {{ trans('dashboard.link.roles') }}
                </a>
                @endcan
            {{-- Menu : Setting --}}
            <div class="sb-sidenav-menu-heading">{{ trans('dashboard.menu.setting') }}</div>
            {{-- Menu : File Manager --}}
            <a class="nav-link {{ set_active(['filemanager.index']) }}" href="{{ route('filemanager.index') }}">
                <div class="sb-nav-link-icon">
                    <i class="fas fa-photo-video"></i>
                </div>
                {{ trans('dashboard.link.file_manager') }}
            </a>
        </div>
    </div>
    <div class="sb-sidenav-footer">
        <div class="small">{{ trans('dashboard.label.logged_in_as') }} {{ Auth::user()->name }}</div>
        <!-- show username -->
    </div>
</nav>
