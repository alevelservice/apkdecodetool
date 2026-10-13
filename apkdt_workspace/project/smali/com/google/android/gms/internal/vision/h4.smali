.class final Lcom/google/android/gms/internal/vision/h4;
.super Lcom/google/android/gms/internal/vision/f4;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/f4<",
        "Lcom/google/android/gms/internal/vision/s4$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/f4;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/s4$c;

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    return p1
.end method

.method final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/i4<",
            "Lcom/google/android/gms/internal/vision/s4$c;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/vision/s4$d;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/s4$d;->zzwk:Lcom/google/android/gms/internal/vision/i4;

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/vision/d4;Lcom/google/android/gms/internal/vision/d6;I)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/d4;->a(Lcom/google/android/gms/internal/vision/d6;I)Lcom/google/android/gms/internal/vision/s4$f;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/vision/e8;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/e8;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/s4$c;

    .line 6
    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->h:Z

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/vision/g4;->a:[I

    .line 8
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 10
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v1

    .line 15
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_0

    .line 16
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 18
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 19
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v1

    .line 21
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Lcom/google/android/gms/internal/vision/r6;)V

    :cond_0
    return-void

    .line 22
    :pswitch_2
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 23
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 24
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    return-void

    .line 25
    :pswitch_3
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 26
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 27
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;)V

    return-void

    .line 28
    :pswitch_4
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 30
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 31
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 32
    :pswitch_5
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 33
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 34
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 35
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->e(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 36
    :pswitch_6
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 37
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 38
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 39
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 40
    :pswitch_7
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 41
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 42
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 43
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 44
    :pswitch_8
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 45
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 46
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 47
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 48
    :pswitch_9
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 49
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 50
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 51
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 52
    :pswitch_a
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 53
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 54
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 55
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 56
    :pswitch_b
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 57
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 58
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 59
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 60
    :pswitch_c
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 61
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 62
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 63
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 64
    :pswitch_d
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 65
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 66
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 67
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 68
    :pswitch_e
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 69
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 70
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 71
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->d(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 72
    :pswitch_f
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 73
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 74
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 75
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 76
    :pswitch_10
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 77
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 78
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 79
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    return-void

    .line 80
    :pswitch_11
    iget v1, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 81
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 82
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->i:Z

    .line 83
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/s6;->a(ILjava/util/List;Lcom/google/android/gms/internal/vision/e8;Z)V

    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/vision/g4;->a:[I

    .line 85
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/s4$c;->g:Lcom/google/android/gms/internal/vision/z7;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 87
    :pswitch_12
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 88
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object p2

    .line 90
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    goto/16 :goto_1

    .line 91
    :pswitch_13
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 92
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object p2

    .line 94
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/e8;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/r6;)V

    return-void

    .line 95
    :pswitch_14
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 96
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->a(ILjava/lang/String;)V

    return-void

    .line 97
    :pswitch_15
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 98
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/j3;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->a(ILcom/google/android/gms/internal/vision/j3;)V

    return-void

    .line 99
    :pswitch_16
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 100
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    return-void

    .line 101
    :pswitch_17
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 102
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/e8;->d(IJ)V

    return-void

    .line 103
    :pswitch_18
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 104
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->zzj(II)V

    return-void

    .line 105
    :pswitch_19
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 106
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/e8;->c(IJ)V

    return-void

    .line 107
    :pswitch_1a
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 108
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->e(II)V

    return-void

    .line 109
    :pswitch_1b
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 110
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->d(II)V

    return-void

    .line 111
    :pswitch_1c
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 112
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->a(IZ)V

    return-void

    .line 113
    :pswitch_1d
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 114
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->c(II)V

    return-void

    .line 115
    :pswitch_1e
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 116
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/e8;->a(IJ)V

    return-void

    .line 117
    :pswitch_1f
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 118
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->a(II)V

    return-void

    .line 119
    :pswitch_20
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 120
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/e8;->e(IJ)V

    return-void

    .line 121
    :pswitch_21
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 122
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/e8;->b(IJ)V

    return-void

    .line 123
    :pswitch_22
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 124
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/e8;->a(IF)V

    return-void

    .line 125
    :pswitch_23
    iget v0, v0, Lcom/google/android/gms/internal/vision/s4$c;->f:I

    .line 126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/e8;->a(ID)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method final a(Lcom/google/android/gms/internal/vision/d6;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/gms/internal/vision/s4$d;

    return p1
.end method

.method final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/i4<",
            "Lcom/google/android/gms/internal/vision/s4$c;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/s4$d;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/s4$d;->m()Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    return-object p1
.end method

.method final c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/h4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i4;->e()V

    return-void
.end method
