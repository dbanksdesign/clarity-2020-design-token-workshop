package com.dbanksdesign.claritydesigntokensdemo;

import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.BindingAdapter;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.dbanksdesign.claritydesigntokensdemo.databinding.ColorCardBinding;
import com.dbanksdesign.claritydesigntokensdemo.databinding.FragmentPaddingBinding;
import com.dbanksdesign.claritydesigntokensdemo.databinding.PaddingCardBinding;
import com.dbanksdesign.claritydesigntokensdemo.model.ColorToken;
import com.dbanksdesign.claritydesigntokensdemo.model.PaddingToken;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class PaddingFragment extends Fragment {

    private FragmentPaddingBinding binding;

    public PaddingFragment() {
        // Required empty public constructor
    }

    private void setupRecyclerView() {
        RecyclerView recyclerView = binding.paddingTokenList;
        LinearLayoutManager layoutManager = new LinearLayoutManager(getContext());
        recyclerView.setLayoutManager(layoutManager);

        List<PaddingToken> colorList = new ArrayList<>();
        Field[] refs = R.dimen.class.getFields();
        for (Field field : refs) {
            if (field.getName().startsWith("size_padding")) {
                String name = field.getName();
                String type = "";
                try {
                    int ref = field.getInt(null);
                    float num = getContext().getResources().getDimension(ref);
                    Log.d("poop", "num: " + num);
                    colorList.add(new PaddingToken(name, type, ref, num));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        colorList.sort(Comparator.comparing(PaddingToken::getValue));

        PaddingFragment.ColorRecyclerViewAdapter adapter = new PaddingFragment.ColorRecyclerViewAdapter(colorList);
        recyclerView.setAdapter(adapter);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        binding = DataBindingUtil.inflate(inflater, R.layout.fragment_padding, container, false);
        setupRecyclerView();
        return binding.getRoot();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }



    public class ColorRecyclerViewAdapter
            extends RecyclerView.Adapter<PaddingFragment.ColorRecyclerViewAdapter.ColorViewHolder> {

        private final List<PaddingToken> mValues;

        public ColorRecyclerViewAdapter(List<PaddingToken> items) {
            mValues = items;
        }

        @NonNull
        @Override
        public PaddingFragment.ColorRecyclerViewAdapter.ColorViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            LayoutInflater layoutInflater = LayoutInflater.from(parent.getContext());
            PaddingCardBinding cardBinding = PaddingCardBinding.inflate(layoutInflater, parent, false);
            return new PaddingFragment.ColorRecyclerViewAdapter.ColorViewHolder(cardBinding);
        }

        @Override
        public void onBindViewHolder(final PaddingFragment.ColorRecyclerViewAdapter.ColorViewHolder holder, int position) {
            PaddingToken colorToken = mValues.get(position);
            holder.bind(colorToken);
        }

        @Override
        public int getItemCount() {
            return mValues.size();
        }

        public class ColorViewHolder extends RecyclerView.ViewHolder {
            private PaddingCardBinding binding;

            public ColorViewHolder(PaddingCardBinding binding) {
                super(binding.getRoot());
                this.binding = binding;
            }

            public void bind(PaddingToken paddingToken) {
                binding.setPaddingToken(paddingToken);
                binding.executePendingBindings();
            }
        }
    }
}