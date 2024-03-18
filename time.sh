#!/usr/bin/env bash

# コマンドの定義
normal_build="gcc normalFizzBuzz.c --std=c11 -O2 -g3 -o ./normalFizzBuzz"
normal_run="./normalFizzBuzz"

optimized_build="gcc optimizedFizzBuzz.c --std=c11 -O2 -g3 -o ./optimizedFizzBuzz"
optimized_run="./optimizedFizzBuzz"

# normal版の計測
echo "----- normal -----"
start_time=$(date +%s.%N)
$normal_build
build_time=$(echo "$(date +%s.%N) - $start_time" | bc)
echo "ビルド時間: $build_time 秒"

start_time=$(date +%s.%N)
$normal_run
run_time=$(echo "$(date +%s.%N) - $start_time" | bc)
echo "実行時間: $run_time 秒"

normal_total_time=$(echo "$build_time + $run_time" | bc)

# optimized版の計測
echo "----- optimized -----"
start_time=$(date +%s.%N)
$optimized_build
build_time=$(echo "$(date +%s.%N) - $start_time" | bc)
echo "ビルド時間: $build_time 秒"

start_time=$(date +%s.%N)
$optimized_run
run_time=$(echo "$(date +%s.%N) - $start_time" | bc)
echo "実行時間: $run_time 秒"

optimized_total_time=$(echo "$build_time + $run_time" | bc)

# 合計時間の出力
echo "----- normal 合計 -----"
echo "実行時間: $normal_total_time 秒"

echo "----- optimized 合計 -----"
echo "実行時間: $optimized_total_time 秒"

