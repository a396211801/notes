<?php

class Smodel extends Medoo
{

    /**
     * 多表事务处理，同一个pdo
     */
    public function setPdo($pdo)
    {
        $this->pdo = $pdo;
    }

}