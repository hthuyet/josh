<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Booktest;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Lang;

class BooktestsController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        $booktests = Booktest::latest()->get();
        return view('admin.booktests.index', compact('booktests'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        return view('admin.booktests.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request) {
        booktest::create($request->all());
        return redirect('admin/booktests')->with('success', Lang::get('message.success.create'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        $booktest = Booktest::findOrFail($id);
        return view('admin.booktests.show', compact('booktest'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        $booktest = Booktest::findOrFail($id);
        return view('admin.booktests.edit', compact('booktest'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, Request $request) {
        //$this->validate($request, ['name' => 'required']); // Uncomment and modify if needed.
        if ((int) $id <= 0) {
            //Create
            booktest::create($request->all());
            return redirect('admin/booktests')->with('success', Lang::get('message.success.create'));
        }
        $booktest = Booktest::findOrFail($id);
        $booktest->update($request->all());
        return redirect('admin/booktests')->with('success', Lang::get('message.success.update'));
    }

    /**
     * Delete confirmation for the given Booktest.
     *
     * @param  int      $id
     * @return View
     */
    public function getModalDelete($id = null) {
        $error = '';
        $model = '';
        $confirm_route = route('admin.booktests.delete', ['id' => $id]);
        return View('admin/layouts/modal_confirmation', compact('error', 'model', 'confirm_route'));
    }

    /**
     * Delete the given Booktest.
     *
     * @param  int      $id
     * @return Redirect
     */
    public function getDelete($id = null) {
        $booktest = Booktest::destroy($id);

        // Redirect to the group management page
        return redirect('admin/booktests')->with('success', Lang::get('message.success.delete'));
    }

    public function getDetail(Request $request) {
        try {
            $id = $request->get("id");
            $booktest = Booktest::findOrFail($id);
            return response()->json(compact('booktest'));
        } catch (Exception $ex) {
            Log::error($ex);
            return response()->json(['error' => trans('messages.systemError')], 411);
        }
    }

    public function saveBook(Request $request) {
        try {
            $param = $request->all();
            if (!$param["id"]) {
                //create
                $booktest = booktest::create($param);

                $success = Lang::get('message.success.create');
            } else {
                //edit
                $booktest = Booktest::findOrFail($param["id"]);
                $booktest->update($param);
                $success = Lang::get('message.success.update');
            }
            return response()->json(compact('booktest', 'success'));
        } catch (Exception $ex) {
            Log::error($ex);
            return response()->json(['error' => trans('messages.systemError')], 411);
        }
    }

}
