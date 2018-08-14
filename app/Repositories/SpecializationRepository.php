<?php


namespace App\Repositories;

use App\Models\Specialization;

class SpecializationRepository extends BaseRepository {

    protected  $model;

    public function __construct(Specialization $model)
    {
        $this->model = $model;
    }
git add app
}