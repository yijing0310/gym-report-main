<?php require __DIR__ . '/includes/init.php';?>
<?php include __DIR__ . '/includes/html-header.php'; ?>
<?php include __DIR__ . '/includes/html-sidebar.php'; ?>
<?php include __DIR__ . '/includes/html-layout-navbar.php'; ?>
<?php include __DIR__ . '/includes/html-content wrapper-start.php'; ?>
<div class="card">
  <h5 class="card-header">Hoverable rows</h5>
  <div class="table-responsive text-nowrap">
    <table class="table table-hover">
      <thead>
        <tr>
          <th>Project</th>
          <th>Client</th>
          <th>Users</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody class="table-border-bottom-0">
        <tr>
          <td><i class="bx bxl-angular bx-md text-danger me-4"></i> <span>Angular Project</span></td>
          <td>Albert Cook</td>
          <td>
            <ul class="list-unstyled m-0 avatar-group d-flex align-items-center">
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Lilian Fuller" data-bs-original-title="Lilian Fuller">
                <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Sophia Wilkerson" data-bs-original-title="Sophia Wilkerson">
                <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Christina Parker" data-bs-original-title="Christina Parker">
                <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle">
              </li>
            </ul>
          </td>
          <td><span class="badge bg-label-primary me-1">Active</span></td>
          <td>
            <div class="dropdown">
              <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a>
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td><i class="bx bxl-react bx-md text-info me-4"></i> <span>React Project</span></td>
          <td>Barry Hunter</td>
          <td>
            <ul class="list-unstyled m-0 avatar-group d-flex align-items-center">
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Lilian Fuller" data-bs-original-title="Lilian Fuller">
                <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Sophia Wilkerson" data-bs-original-title="Sophia Wilkerson">
                <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Christina Parker" data-bs-original-title="Christina Parker">
                <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle">
              </li>
            </ul>
          </td>
          <td><span class="badge bg-label-success me-1">Completed</span></td>
          <td>
            <div class="dropdown">
              <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a>
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td><i class="bx bxl-vuejs bx-md text-success me-4"></i> <span>VueJs Project</span></td>
          <td>Trevor Baker</td>
          <td>
            <ul class="list-unstyled m-0 avatar-group d-flex align-items-center">
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Lilian Fuller" data-bs-original-title="Lilian Fuller">
                <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Sophia Wilkerson" data-bs-original-title="Sophia Wilkerson">
                <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Christina Parker" data-bs-original-title="Christina Parker">
                <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle">
              </li>
            </ul>
          </td>
          <td><span class="badge bg-label-info me-1">Scheduled</span></td>
          <td>
            <div class="dropdown">
              <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a>
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td><i class="bx bxl-bootstrap bx-md text-primary me-4"></i> <span>Bootstrap Project</span></td>
          <td>Jerry Milton</td>
          <td>
            <ul class="list-unstyled m-0 avatar-group d-flex align-items-center">
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Lilian Fuller" data-bs-original-title="Lilian Fuller">
                <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Sophia Wilkerson" data-bs-original-title="Sophia Wilkerson">
                <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle">
              </li>
              <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" aria-label="Christina Parker" data-bs-original-title="Christina Parker">
                <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle">
              </li>
            </ul>
          </td>
          <td><span class="badge bg-label-warning me-1">Pending</span></td>
          <td>
            <div class="dropdown">
              <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a>
                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a>
              </div>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

<?php include __DIR__ . '/includes/html-content wrapper-end.php'; ?>
<?php include __DIR__ . '/includes/html-footer.php'; ?>