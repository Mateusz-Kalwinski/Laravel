<?php


namespace App\Repositories;

use App\Models\Visit;

class VisitRepository extends BaseRepository {

    protected  $model;

    public function __construct(Visit $model)
    {
        $this->model = $model;
    }

}