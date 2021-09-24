<div class="show-date">
    <p class="col-lg-1 col-sm-1 col-xs-1">Дата</p>
    <input  type="date" class="col-lg-2 col-sm-2 col-xs-2 form-control calendar-width refresh-date" id="choose-date" name="date" value="">
    <div class="col-lg-1 col-sm-1 col-md-1 col-xs-1"></div>
    <button id="refresh-date" class="col-lg-1 col-sm-1 col-md-1 col-xs-1 btn btn-primary refresh-date">Обновить</button>
</div>
<?php foreach ($halls as $hall) { ?>
            <div class="halls-container container-fluid margin-top-40">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="accordion" class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title hall-id"><a class="show-hall-<?php echo $hall["hall_id"] ?>" href="#collapse-<?php echo $hall["hall_id"] ?>" data-toggle="collapse" >ID:<?php echo $hall["hall_id"]." "?>Название: <?php echo $hall["hall_name"] ?></a></h4>
                                </div>
                                <div id="collapse-<?php echo $hall["hall_id"] ?>" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="form-group">
                                        <h4 class="col-lg-1 col-sm-1 col-xs-1 margin-top-10"><?php echo $hall["hall_name"]; ?></h4>
                                        <button class="col-lg-2 col-md-2 col-xs-2 btn btn-primary" id="edit-hall-<?php echo $hall["hall_id"] ?>" data-toggle="modal" data-target="#addHall">Редактировать зал</button>
                                        <div class="col-lg-1 col-md-1 col-xs-1"></div>
                                        <p class="col-lg-2 col-sm-2 col-xs-2 margin-top-10">Начало работы зала</p>
                                        <b class="well-sm col-lg-1 col-sm-1 col-xs-1"><?php echo $hall["hall_time_start"]; ?></b>
                                        <p class="col-lg-2 col-sm-2 col-xs-2 margin-top-10">Конец работы зала</p>
                                        <b class="well-sm col-lg-1 col-sm-1 col-xs-1"><?php echo $hall["hall_time_end"]; ?></b>
                                        <button class="col-lg-1 col-md-1 col-xs-1 btn btn-primary" id="delete-hall-<?php echo $hall["hall_id"] ?>">Удалить зал</button>
                                    </div>
                                    <table class="table col-lg-10 margin-top-40 hidden-table" style="height: 40px;">
                                        <thead><tr class="">
                                            <th></th>
                                            <?php for ($i = 1; $i <= 9; $i++) { ?>
                                            <th class="hour-block"><p>0<?php echo $i ?>:00</p></th>
                                            <?php } ?>
                                            <?php for ($i = 10; $i <= 23; $i++) { ?>
                                            <th class="hour-block"><p><?php echo $i ?>:00</p></th>
                                            <?php } ?>
                                        </tr></thead>
                                    </table>
                                    <table class="table table-bordered col-lg-10" style="height: 40px;">
                                        <thead>
                                        <tr class="time-line time-line-<?php echo $hall["hall_id"] ?>">
                                            <?php for ($i = 1; $i <= 48; $i++) { ?>
                                            <th class="table-<?php echo $hall["hall_id"] ?> hour-<?php echo $i ?>"></th>
                                            <?php } ?>
                                        </tr>
                                        </thead>
                                    </table>
                                    <div class="panel-body meeting-body-<?php echo $hall["hall_id"] ?>"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<?php } ?>
 <div class="row col-lg-3 col-sm-3 col-xs-3 margin-top-40 margin-bottom-10">
     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addHall">Добавить зал</button>
 </div>
<input class="hidden halls-count" value="<?php echo $halls_count; ?>">