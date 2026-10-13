.class final Lcom/google/android/gms/internal/clearcut/r0;
.super Lcom/google/android/gms/internal/clearcut/q0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/q0<",
        "Lcom/google/android/gms/internal/clearcut/d1$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/q0;-><init>()V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1$d;

    iget p1, p1, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    return p1
.end method

.method final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/u0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/clearcut/u0<",
            "Lcom/google/android/gms/internal/clearcut/d1$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1$c;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/d1$c;->zzjv:Lcom/google/android/gms/internal/clearcut/u0;

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/clearcut/m4;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/clearcut/m4;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d1$d;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/s0;->a:[I

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->f:Lcom/google/android/gms/internal/clearcut/g4;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/u2;->a()Lcom/google/android/gms/internal/clearcut/u2;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/clearcut/u2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/z2;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/m4;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/z2;)V

    goto/16 :goto_0

    :pswitch_1
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/u2;->a()Lcom/google/android/gms/internal/clearcut/u2;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/clearcut/u2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/z2;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/m4;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/z2;)V

    return-void

    :pswitch_2
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->a(ILjava/lang/String;)V

    return-void

    :pswitch_3
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/clearcut/y;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->a(ILcom/google/android/gms/internal/clearcut/y;)V

    return-void

    :pswitch_4
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->a(II)V

    return-void

    :pswitch_5
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/m4;->d(IJ)V

    return-void

    :pswitch_6
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->e(II)V

    return-void

    :pswitch_7
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/m4;->c(IJ)V

    return-void

    :pswitch_8
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->zzm(II)V

    return-void

    :pswitch_9
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->d(II)V

    return-void

    :pswitch_a
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->a(IZ)V

    return-void

    :pswitch_b
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->c(II)V

    return-void

    :pswitch_c
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/m4;->a(IJ)V

    return-void

    :pswitch_d
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->a(II)V

    return-void

    :pswitch_e
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/m4;->e(IJ)V

    return-void

    :pswitch_f
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/m4;->b(IJ)V

    return-void

    :pswitch_10
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/m4;->a(IF)V

    return-void

    :pswitch_11
    iget v0, v0, Lcom/google/android/gms/internal/clearcut/d1$d;->e:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/m4;->a(ID)V

    :goto_0
    return-void

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
.end method

.method final a(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/u0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/clearcut/u0<",
            "Lcom/google/android/gms/internal/clearcut/d1$d;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1$c;

    iput-object p2, p1, Lcom/google/android/gms/internal/clearcut/d1$c;->zzjv:Lcom/google/android/gms/internal/clearcut/u0;

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/clearcut/i2;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/clearcut/d1$c;

    return p1
.end method

.method final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/u0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/clearcut/u0<",
            "Lcom/google/android/gms/internal/clearcut/d1$d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/r0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/u0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/u0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/u0;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/r0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/u0;)V

    :cond_0
    return-object v0
.end method

.method final c(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/r0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/u0;->h()V

    return-void
.end method
