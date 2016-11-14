<?php

/* custom routes generated by CRUD */
Route::group(['middleware' => ['web']], function () {
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('books', 'BooksController');
        Route::get('books/{id}/delete', array('as' => 'admin.books.delete', 'uses' => 'BooksController@getDelete'));
        Route::get('books/{id}/confirm-delete', array('as' => 'admin.books.confirm-delete', 'uses' => 'BooksController@getModalDelete'));
    });
    Route::group(array('prefix' => 'admin', 'middleware' => 'SentinelAdmin'), function () {
        Route::resource('booktests', 'BooktestsController');
        Route::get('booktests/{id}/delete', array('as' => 'admin.booktests.delete', 'uses' => 'BooktestsController@getDelete'));
        Route::get('booktests/{id}/confirm-delete', array('as' => 'admin.booktests.confirm-delete', 'uses' => 'BooktestsController@getModalDelete'));
    });
});
