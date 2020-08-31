package com.dbanksdesign.claritydesigntokensdemo;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.dbanksdesign.claritydesigntokensdemo.databinding.FontSizeCardBinding;
import com.dbanksdesign.claritydesigntokensdemo.databinding.FragmentFontSizeBinding;
import com.dbanksdesign.claritydesigntokensdemo.model.FontSizeToken;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class FontSizeFragment extends Fragment {

    private FragmentFontSizeBinding binding;

    public FontSizeFragment() {
        // Required empty public constructor
    }

    private void setupRecyclerView() {
        RecyclerView recyclerView = binding.fontSizeTokenList;
        LinearLayoutManager layoutManager = new LinearLayoutManager(getContext());
        recyclerView.setLayoutManager(layoutManager);

        List<FontSizeToken> colorList = new ArrayList<>();
        Field[] refs = R.dimen.class.getFields();
        for (Field field : refs) {
            if (field.getName().startsWith("size_font")) {
                String name = field.getName();
                String type = "";
                try {
                    int ref = field.getInt(null);
                    float num = getContext().getResources().getDimension(ref);
                    Log.d("poop", "num: " + num);
                    colorList.add(new FontSizeToken(name, type, ref, num));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        colorList.sort(Comparator.comparing(FontSizeToken::getValue));

        FontSizeFragment.ColorRecyclerViewAdapter adapter = new FontSizeFragment.ColorRecyclerViewAdapter(colorList);
        recyclerView.setAdapter(adapter);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        binding = DataBindingUtil.inflate(inflater, R.layout.fragment_font_size, container, false);
        setupRecyclerView();
        return binding.getRoot();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }



    public class ColorRecyclerViewAdapter
            extends RecyclerView.Adapter<FontSizeFragment.ColorRecyclerViewAdapter.ColorViewHolder> {

        private final List<FontSizeToken> mValues;

        public ColorRecyclerViewAdapter(List<FontSizeToken> items) {
            mValues = items;
        }

        @NonNull
        @Override
        public FontSizeFragment.ColorRecyclerViewAdapter.ColorViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            LayoutInflater layoutInflater = LayoutInflater.from(parent.getContext());
            FontSizeCardBinding cardBinding = FontSizeCardBinding.inflate(layoutInflater, parent, false);
            return new FontSizeFragment.ColorRecyclerViewAdapter.ColorViewHolder(cardBinding);
        }

        @Override
        public void onBindViewHolder(final FontSizeFragment.ColorRecyclerViewAdapter.ColorViewHolder holder, int position) {
            FontSizeToken colorToken = mValues.get(position);
            holder.bind(colorToken);
        }

        @Override
        public int getItemCount() {
            return mValues.size();
        }

        public class ColorViewHolder extends RecyclerView.ViewHolder {
            private FontSizeCardBinding binding;

            public ColorViewHolder(FontSizeCardBinding binding) {
                super(binding.getRoot());
                this.binding = binding;
            }

            public void bind(FontSizeToken fontSizeToken) {
                binding.setFontSizeToken(fontSizeToken);
                binding.executePendingBindings();
            }
        }
    }
}