<?php

namespace App\Admin\Controllers;

use App\Mail\DemoMail;
use App\Models\Invoice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Mail;

class InvoiceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Invoice';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Invoice());

        $grid->column('customer_name');
        $grid->column('customer_phone');
        $grid->customer_email()->display(function ($email) {
            return "mailto: $email";
        });
        $grid->column('customer_file')->downloadable();

        

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Invoice::findOrFail($id));


        dump($show->customer_file);

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Invoice());

        $form->text('customer_name')->required();
        $form->mobile('customer_phone',"Phone")->required();
        $form->email('customer_email')->required()->rules("email");
        $form->file('customer_file')->required();

        $form->footer(function ($footer) {

            // disable reset btn
            $footer->disableReset();

            // disable submit btn

            // disable `View` checkbox
            $footer->disableViewCheck();

            // disable `Continue editing` checkbox
            $footer->disableEditingCheck();

            // disable `Continue Creating` checkbox
            $footer->disableCreatingCheck();

        });

        

        $form->saving(function (Form $form) {

            dump("thisi");
            $mailData = [
                'title' => "pro- forma invoice ",
                'attachment' =>   public_path($form->customer_file),
            ];

            $file = $form->customer_file;
           

            

            Mail::to($form->customer_email)->send(new DemoMail($mailData, $file));
       
            
        });
        return $form;
    }
}
