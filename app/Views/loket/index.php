<?= $this->extend('layout/template'); ?>
<?= $this->section('dasbord'); ?>


<div class="containe">

  <div class="row my-5 ">
    <!--  -->
    <div class="col shadow p-3 mb-5 bg-body rounded">
      <!-- <button type="submit" class="btn btn-primary w-100 mb-4">Daftar Antrian Selanjutnya</button> -->
      <table class="table table-hover border border-3">
        <thead class="table-dark">
          <tr>
            <td>No</td>
            <td>No antrian</td>
            <td>Nama</td>
            <td>Panggil</td>
            <td>Keterangan</td>
          </tr>
        </thead>
        <?php
        $no = 1;
        foreach ($loket as $row => $values) : ?>
          <tbody>
            <tr>
              <th><?= $no++; ?></th>
              <th>A<?= $values->kode ?></th>
              <th><?= $values->nama ?></th>
              <th><a href="/loket/ambil_loket/<?= $values->id ?>" class="btn btn-warning">Panggil</a></th>
              <th><a href="/loket/hapus/<?= $values->id ?>" class="btn btn-danger">Selesai</a></th>
            </tr>
          </tbody>
        <?php endforeach; ?>
      </table>
    </div>
  </div>

</div>




<?= $this->endSection(); ?>