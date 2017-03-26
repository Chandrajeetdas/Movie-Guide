package com.ashish.movieguide.ui.common.adapter

/**
 * Created by Ashish on Dec 30.
 */
interface ViewType {

    companion object {
        const val LOADING_VIEW = 0
        const val CONTENT_VIEW = 1
        const val ERROR_VIEW = 2
    }

    fun getViewType(): Int
}