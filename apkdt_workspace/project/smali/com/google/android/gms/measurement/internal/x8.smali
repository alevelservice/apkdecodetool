.class final Lcom/google/android/gms/measurement/internal/x8;
.super Lcom/google/android/gms/measurement/internal/h8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/g8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/h8;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    return-void
.end method

.method private final a(DLcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;
    .locals 1

    .line 561
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/b0;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(JLcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;
    .locals 1

    .line 560
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/b0;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/c0;Lcom/google/android/gms/internal/measurement/v0;)Ljava/lang/Boolean;
    .locals 3

    .line 487
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c0;->w()Lcom/google/android/gms/internal/measurement/a0;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->u()Z

    move-result v0

    .line 489
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->q()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 493
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "No number filter for long property. property"

    .line 494
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 495
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->s()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->q()Lcom/google/android/gms/internal/measurement/b0;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/x8;->a(JLcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;

    move-result-object p1

    .line 496
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 497
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 501
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "No number filter for double property. property"

    .line 502
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 503
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->v()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->q()Lcom/google/android/gms/internal/measurement/b0;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/x8;->a(DLcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;

    move-result-object p1

    .line 504
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 505
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 506
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->n()Z

    move-result v1

    if-nez v1, :cond_6

    .line 507
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->p()Z

    move-result v1

    if-nez v1, :cond_4

    .line 508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "No string or number filter defined. property"

    .line 511
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 512
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 513
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->q()Lcom/google/android/gms/internal/measurement/b0;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;

    move-result-object p1

    .line 514
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 515
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 516
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->p()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Invalid user property value for Numeric number filter. property, value"

    .line 519
    invoke-virtual {p1, v1, v0, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v2

    .line 520
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a0;->o()Lcom/google/android/gms/internal/measurement/d0;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d0;)Ljava/lang/Boolean;

    move-result-object p1

    .line 521
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 522
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 524
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "User property has no value, property"

    .line 525
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/z;Ljava/lang/String;Ljava/util/List;J)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/z;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/p0;",
            ">;J)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z;->u()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z;->v()Lcom/google/android/gms/internal/measurement/b0;

    move-result-object v0

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/measurement/internal/x8;->a(JLcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;

    move-result-object p4

    if-nez p4, :cond_0

    return-object v3

    .line 409
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_1

    return-object v2

    .line 410
    :cond_1
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 411
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z;->s()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a0;

    .line 412
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a0;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 415
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "null or empty param name in filter. event"

    .line 416
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 417
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a0;->v()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_3
    new-instance p5, La/e/a;

    invoke-direct {p5}, La/e/a;-><init>()V

    .line 419
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p0;

    .line 420
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 421
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->q()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 422
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->q()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->s()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    invoke-interface {p5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 423
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->u()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 424
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->u()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->v()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    invoke-interface {p5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 425
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->o()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 426
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 427
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 428
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/d3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown value for param. event, param"

    .line 431
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 432
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/a0;

    .line 433
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 p4, 0x0

    .line 434
    :goto_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->v()Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 436
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Event has empty param name. event"

    .line 439
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 440
    :cond_d
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 441
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_10

    .line 442
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->p()Z

    move-result v5

    if-nez v5, :cond_e

    .line 443
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 445
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 446
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/d3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for long param. event, param"

    .line 447
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 448
    :cond_e
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->q()Lcom/google/android/gms/internal/measurement/b0;

    move-result-object p3

    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/measurement/internal/x8;->a(JLcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_f

    return-object v3

    .line 449
    :cond_f
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-ne p3, p4, :cond_b

    return-object v2

    .line 450
    :cond_10
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_13

    .line 451
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->p()Z

    move-result v5

    if-nez v5, :cond_11

    .line 452
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/d3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for double param. event, param"

    .line 456
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 457
    :cond_11
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->q()Lcom/google/android/gms/internal/measurement/b0;

    move-result-object p3

    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/measurement/internal/x8;->a(DLcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_12

    return-object v3

    .line 458
    :cond_12
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-ne p3, p4, :cond_b

    return-object v2

    .line 459
    :cond_13
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 460
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->n()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 461
    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->o()Lcom/google/android/gms/internal/measurement/d0;

    move-result-object p3

    invoke-direct {p0, v4, p3}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d0;)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_5

    .line 462
    :cond_14
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->p()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 463
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 464
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/a0;->q()Lcom/google/android/gms/internal/measurement/b0;

    move-result-object p3

    invoke-direct {p0, v4, p3}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;

    move-result-object p3

    :goto_5
    if-nez p3, :cond_15

    return-object v3

    .line 465
    :cond_15
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-ne p3, p4, :cond_b

    return-object v2

    .line 466
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 469
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/d3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Invalid param value for number filter. event, param"

    .line 470
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 471
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 474
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/d3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No filter for String param. event, param"

    .line 475
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_18
    if-nez v4, :cond_19

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 479
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/d3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Missing param for filter. event, param"

    .line 480
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 481
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 483
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 484
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/d3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown param type. event, param"

    .line 485
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 486
    :cond_1a
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 526
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/b0;)Ljava/lang/Boolean;
    .locals 4

    .line 562
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 563
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/b0;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d0$a;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/d0$a;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 545
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvw:Lcom/google/android/gms/internal/measurement/d0$a;

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    .line 546
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    .line 547
    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvr:Lcom/google/android/gms/internal/measurement/d0$a;

    if-ne p2, v1, :cond_4

    goto :goto_0

    .line 548
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 549
    :cond_5
    :goto_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/w8;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 550
    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 551
    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 552
    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 553
    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 554
    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_1

    :cond_6
    const/16 p2, 0x42

    .line 555
    :goto_1
    :try_start_0
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 556
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 557
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    .line 559
    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d0;)Ljava/lang/Boolean;
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 527
    invoke-static {p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 528
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->n()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->o()Lcom/google/android/gms/internal/measurement/d0$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/d0$a;->zzvq:Lcom/google/android/gms/internal/measurement/d0$a;

    if-ne v1, v2, :cond_1

    goto/16 :goto_6

    .line 529
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->o()Lcom/google/android/gms/internal/measurement/d0$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/d0$a;->zzvw:Lcom/google/android/gms/internal/measurement/d0$a;

    if-ne v1, v2, :cond_2

    .line 530
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->w()I

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 531
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->p()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 532
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->o()Lcom/google/android/gms/internal/measurement/d0$a;

    move-result-object v4

    .line 533
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->u()Z

    move-result v5

    if-nez v5, :cond_5

    .line 534
    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvr:Lcom/google/android/gms/internal/measurement/d0$a;

    if-eq v4, v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/measurement/d0$a;->zzvw:Lcom/google/android/gms/internal/measurement/d0$a;

    if-ne v4, v1, :cond_4

    goto :goto_0

    .line 535
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 536
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->q()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v6, v1

    .line 537
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->w()I

    move-result v1

    if-nez v1, :cond_6

    move-object v7, v0

    goto :goto_4

    .line 538
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d0;->v()Ljava/util/List;

    move-result-object p2

    if-eqz v5, :cond_7

    :goto_2
    move-object v7, p2

    goto :goto_4

    .line 539
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 541
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 542
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_2

    .line 543
    :goto_4
    sget-object p2, Lcom/google/android/gms/internal/measurement/d0$a;->zzvr:Lcom/google/android/gms/internal/measurement/d0$a;

    if-ne v4, p2, :cond_9

    move-object v8, v6

    goto :goto_5

    :cond_9
    move-object v8, v0

    :goto_5
    move-object v2, p0

    move-object v3, p1

    .line 544
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d0$a;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_6
    return-object v0
.end method

.method private static a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/b0;D)Ljava/lang/Boolean;
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 564
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 566
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->o()Lcom/google/android/gms/internal/measurement/b0$b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/b0$b;->zzva:Lcom/google/android/gms/internal/measurement/b0$b;

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    .line 567
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->o()Lcom/google/android/gms/internal/measurement/b0$b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/b0$b;->zzve:Lcom/google/android/gms/internal/measurement/b0$b;

    if-ne v0, v2, :cond_2

    .line 568
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->x()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    .line 569
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->s()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 570
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->o()Lcom/google/android/gms/internal/measurement/b0$b;

    move-result-object v0

    .line 571
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->o()Lcom/google/android/gms/internal/measurement/b0$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/b0$b;->zzve:Lcom/google/android/gms/internal/measurement/b0$b;

    if-ne v2, v3, :cond_6

    .line 572
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 573
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 574
    :cond_4
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 575
    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->y()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    move-object v2, v1

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    return-object v1

    .line 576
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    return-object v1

    .line 577
    :cond_7
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b0;->u()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v3, p1

    .line 578
    :goto_1
    sget-object v4, Lcom/google/android/gms/internal/measurement/b0$b;->zzve:Lcom/google/android/gms/internal/measurement/b0$b;

    if-ne v0, v4, :cond_9

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    return-object v1

    :cond_9
    if-eqz v2, :cond_14

    .line 579
    :goto_2
    sget-object v4, Lcom/google/android/gms/measurement/internal/w8;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_12

    const/4 v7, 0x2

    if-eq v0, v7, :cond_10

    const/4 v8, 0x3

    if-eq v0, v8, :cond_c

    const/4 p2, 0x4

    if-eq v0, p2, :cond_a

    goto :goto_3

    .line 580
    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v4, :cond_b

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_b

    const/4 v5, 0x1

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_e

    .line 581
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 582
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 583
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_d

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 584
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 585
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_d

    const/4 v5, 0x1

    .line 586
    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 587
    :cond_e
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v5, 0x1

    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 588
    :cond_10
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_11

    const/4 v5, 0x1

    :cond_11
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 589
    :cond_12
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_13

    const/4 v5, 0x1

    :cond_13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    :cond_14
    :goto_3
    return-object v1
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m0;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 590
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 591
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 592
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 593
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m0;->s()Lcom/google/android/gms/internal/measurement/m0$a;

    move-result-object v3

    .line 594
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/m0$a;->a(I)Lcom/google/android/gms/internal/measurement/m0$a;

    .line 595
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/m0$a;->a(J)Lcom/google/android/gms/internal/measurement/m0$a;

    .line 596
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/m0;

    .line 597
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Ljava/util/Map;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    .line 598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x3e8

    .line 599
    div-long/2addr p2, v1

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 601
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static b(Ljava/util/Map;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;IJ)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 p0, 0x3e8

    .line 4
    div-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 71
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/n0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/v0;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/l0;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v13, La/e/a;

    invoke-direct {v13}, La/e/a;-><init>()V

    .line 6
    new-instance v14, La/e/a;

    invoke-direct {v14}, La/e/a;-><init>()V

    .line 7
    new-instance v11, La/e/a;

    invoke-direct {v11}, La/e/a;-><init>()V

    .line 8
    new-instance v12, La/e/a;

    invoke-direct {v12}, La/e/a;-><init>()V

    .line 9
    new-instance v10, La/e/a;

    invoke-direct {v10}, La/e/a;-><init>()V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/z8;->i(Ljava/lang/String;)Z

    move-result v25

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->q0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gms/measurement/internal/z8;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v26

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->x0:Lcom/google/android/gms/measurement/internal/w2;

    .line 14
    invoke-virtual {v0, v9, v1}, Lcom/google/android/gms/measurement/internal/z8;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v27

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->y0:Lcom/google/android/gms/measurement/internal/w2;

    .line 16
    invoke-virtual {v0, v9, v1}, Lcom/google/android/gms/measurement/internal/z8;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v28

    if-nez v27, :cond_0

    if-eqz v28, :cond_2

    .line 17
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n0;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n0;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v29, v0

    goto :goto_0

    :cond_2
    const/16 v29, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v4, 0x0

    if-eqz v29, :cond_3

    if-eqz v28, :cond_3

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "current_session_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const-string v5, "app_id = ?"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v9, v8, v4

    .line 27
    invoke-virtual {v2, v3, v0, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting session-scoped event counts. appId"

    .line 31
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/e9;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 33
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 34
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v27, :cond_b

    if-eqz v29, :cond_b

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->l()Lcom/google/android/gms/measurement/internal/x8;

    move-result-object v2

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v3, La/e/a;

    invoke-direct {v3}, La/e/a;-><init>()V

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/e9;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 42
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/t0;

    .line 43
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_a

    .line 44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    goto/16 :goto_5

    :cond_4
    move-object/from16 v20, v5

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v5

    move-object/from16 v21, v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t0;->p()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 46
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v8

    .line 48
    check-cast v8, Lcom/google/android/gms/internal/measurement/t0$a;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/t0$a;->i()Lcom/google/android/gms/internal/measurement/t0$a;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/t0$a;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v5

    move-object/from16 v22, v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t0;->n()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/t0$a;->h()Lcom/google/android/gms/internal/measurement/t0$a;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/t0$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    const/4 v2, 0x0

    .line 51
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t0;->u()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 52
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/t0;->b(I)Lcom/google/android/gms/internal/measurement/m0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/m0;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 53
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 54
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/t0$a;->a(I)Lcom/google/android/gms/internal/measurement/t0$a;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 55
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t0;->w()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 56
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/t0;->c(I)Lcom/google/android/gms/internal/measurement/u0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u0;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 57
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 58
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/t0$a;->b(I)Lcom/google/android/gms/internal/measurement/t0$a;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 59
    :cond_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/t0;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    move-object/from16 v5, v20

    move-object/from16 v8, v21

    goto :goto_7

    :cond_a
    :goto_5
    move-object/from16 v22, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    .line 60
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object/from16 v5, v20

    move-object/from16 v8, v21

    move-object/from16 v2, v22

    :goto_7
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_b
    move-object v3, v0

    .line 61
    :cond_c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/t0;

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    if-eqz v25, :cond_11

    .line 65
    new-instance v8, La/e/a;

    invoke-direct {v8}, La/e/a;-><init>()V

    if-eqz v4, :cond_10

    .line 66
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t0;->u()I

    move-result v17

    if-nez v17, :cond_d

    goto :goto_c

    .line 67
    :cond_d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t0;->s()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/gms/internal/measurement/m0;

    .line 68
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/m0;->o()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 69
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/m0;->n()I

    move-result v21

    move-object/from16 v22, v1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 70
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/m0;->p()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 71
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/m0;->q()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v70, v20

    move-object/from16 v20, v3

    move-object/from16 v3, v70

    goto :goto_a

    :cond_e
    move-object/from16 v20, v3

    const/4 v3, 0x0

    .line 72
    :goto_a
    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    move-object/from16 v22, v1

    move-object/from16 v20, v3

    :goto_b
    move-object/from16 v3, v20

    move-object/from16 v1, v22

    goto :goto_9

    :cond_10
    :goto_c
    move-object/from16 v22, v1

    move-object/from16 v20, v3

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    invoke-interface {v12, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_11
    move-object/from16 v22, v1

    move-object/from16 v20, v3

    const/4 v8, 0x0

    :goto_d
    if-nez v5, :cond_12

    .line 75
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz v4, :cond_16

    const/4 v1, 0x0

    .line 79
    :goto_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t0;->o()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v1, v3, :cond_16

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t0;->n()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    move-object/from16 v17, v11

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v21, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v23, v14

    const-string v14, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v3, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t0;->p()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 86
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x1

    goto :goto_f

    :cond_13
    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v23, v14

    :cond_14
    const/4 v3, 0x0

    :goto_f
    if-eqz v8, :cond_15

    if-nez v3, :cond_15

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v17

    move-object/from16 v12, v21

    move-object/from16 v14, v23

    goto :goto_e

    :cond_16
    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v23, v14

    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l0;->w()Lcom/google/android/gms/internal/measurement/l0$a;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/l0$a;->a(Z)Lcom/google/android/gms/internal/measurement/l0$a;

    if-eqz v27, :cond_17

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/t0;

    .line 90
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/l0$a;->a(Lcom/google/android/gms/internal/measurement/t0;)Lcom/google/android/gms/internal/measurement/l0$a;

    goto :goto_10

    .line 91
    :cond_17
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/l0$a;->a(Lcom/google/android/gms/internal/measurement/t0;)Lcom/google/android/gms/internal/measurement/l0$a;

    .line 92
    :goto_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t0;->B()Lcom/google/android/gms/internal/measurement/t0$a;

    move-result-object v3

    .line 93
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/t0$a;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    .line 94
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/t0$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    if-eqz v25, :cond_18

    .line 95
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/t0$a;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, La/e/a;

    invoke-direct {v5}, La/e/a;-><init>()V

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_18
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/l0$a;->a(Lcom/google/android/gms/internal/measurement/t0$a;)Lcom/google/android/gms/internal/measurement/l0$a;

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/l0;

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v17

    move-object/from16 v3, v20

    move-object/from16 v12, v21

    move-object/from16 v1, v22

    move-object/from16 v14, v23

    goto/16 :goto_8

    :cond_19
    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v23, v14

    .line 100
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v14, "Filter definition"

    const-string v8, "Skipping failed audience ID"

    const-string v30, "null"

    if-nez v0, :cond_49

    .line 101
    new-instance v6, La/e/a;

    invoke-direct {v6}, La/e/a;-><init>()V

    .line 102
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    const-wide/16 v32, 0x0

    move-wide/from16 v2, v32

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/n0;

    .line 103
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n0;->o()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n0;->q()Ljava/util/List;

    move-result-object v20

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    const-string v11, "_eid"

    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/n8;->b(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v12, v24

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_1a

    const/16 v24, 0x1

    goto :goto_12

    :cond_1a
    const/16 v24, 0x0

    :goto_12
    move-wide/from16 v35, v2

    if-eqz v24, :cond_1b

    const-string v2, "_ep"

    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    :goto_13
    const-wide/16 v37, 0x1

    if-eqz v2, :cond_26

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    const-string v2, "_en"

    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/n8;->b(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Extra parameter without an event name. eventId"

    invoke-virtual {v2, v3, v12}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v41, v6

    move-object/from16 v18, v8

    goto/16 :goto_1e

    :cond_1c
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    .line 110
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    cmp-long v24, v2, v39

    if-eqz v24, :cond_1d

    goto :goto_14

    :cond_1d
    move-object v11, v0

    move-object/from16 v24, v1

    move-wide/from16 v0, v35

    goto :goto_15

    .line 111
    :cond_1e
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 112
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_1f

    goto/16 :goto_1d

    .line 113
    :cond_1f
    check-cast v3, Lcom/google/android/gms/internal/measurement/n0;

    .line 114
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    invoke-static {v3, v11}, Lcom/google/android/gms/measurement/internal/n8;->b(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v24, v2

    move-object v11, v3

    :goto_15
    sub-long v35, v0, v37

    cmp-long v0, v35, v32

    if-gtz v0, :cond_20

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v2, "Clearing complex main event info. appId"

    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "delete from main_event_params where app_id=?"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x1

    :try_start_2
    new-array v12, v3, [Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v18, 0x0

    :try_start_3
    aput-object v9, v12, v18

    .line 120
    invoke-virtual {v0, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    goto :goto_16

    :catch_3
    move-exception v0

    const/4 v3, 0x1

    :goto_16
    const/16 v18, 0x0

    .line 121
    :goto_17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Error clearing complex main event"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_18
    move-object v12, v4

    move-object/from16 v41, v6

    move-object/from16 v18, v8

    move-object v8, v5

    goto :goto_19

    :cond_20
    const/4 v3, 0x1

    const/16 v18, 0x0

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    move-object/from16 v2, p1

    const/16 v19, 0x1

    move-object v3, v12

    move-object v12, v4

    move-object/from16 v18, v8

    move-object v8, v5

    move-wide/from16 v4, v35

    move-object/from16 v41, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/n0;)Z

    .line 123
    :goto_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p0;

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v3

    if-nez v3, :cond_21

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 127
    :cond_22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 128
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p0;

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_23
    move-object/from16 v42, v0

    move-object v0, v8

    move-object/from16 v39, v11

    move-object v11, v12

    goto :goto_1c

    .line 130
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    move-object/from16 v39, v11

    move-object v11, v12

    move-object/from16 v42, v20

    :goto_1c
    move-object/from16 v40, v24

    goto/16 :goto_22

    :cond_25
    :goto_1d
    move-object/from16 v41, v6

    move-object/from16 v18, v8

    move-object v8, v5

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Extra parameter without existing main event. eventName, eventId"

    .line 133
    invoke-virtual {v2, v3, v8, v12}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1e
    move-object/from16 v8, v18

    move-wide/from16 v2, v35

    move-object/from16 v6, v41

    goto/16 :goto_11

    :cond_26
    move-object v11, v4

    move-object/from16 v41, v6

    move-object/from16 v18, v8

    if-eqz v24, :cond_29

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_epc"

    .line 135
    invoke-static {v11, v1}, Lcom/google/android/gms/measurement/internal/n8;->b(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_1f

    :cond_27
    move-object v0, v1

    .line 136
    :goto_1f
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    cmp-long v0, v35, v32

    if-gtz v0, :cond_28

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Complex event with zero extra param count. eventName"

    .line 139
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v5

    goto :goto_20

    .line 140
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v8, v5

    move-wide/from16 v4, v35

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/n0;)Z

    :goto_20
    move-object v0, v8

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    goto :goto_21

    :cond_29
    move-object v8, v5

    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object v0, v8

    :goto_21
    move-object/from16 v42, v20

    .line 141
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 146
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v28, :cond_2a

    .line 147
    new-instance v1, Lcom/google/android/gms/measurement/internal/f;

    move-object/from16 v5, v18

    const/4 v6, 0x0

    move-object v8, v1

    .line 148
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0;->o()Ljava/lang/String;

    move-result-object v2

    move-object v4, v10

    move-object v10, v2

    const-wide/16 v2, 0x1

    move-object/from16 v34, v11

    move-object/from16 v43, v17

    move-object/from16 v44, v21

    move-wide v11, v2

    move-object/from16 v46, v13

    move-object/from16 v48, v14

    move-object/from16 v47, v23

    move-wide v13, v2

    move-object/from16 v49, v15

    move-wide v15, v2

    .line 149
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v3, v9

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v24}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_23

    :cond_2a
    move-object v3, v9

    move-object v4, v10

    move-object/from16 v34, v11

    move-object/from16 v46, v13

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v43, v17

    move-object/from16 v5, v18

    move-object/from16 v44, v21

    move-object/from16 v47, v23

    const/4 v6, 0x0

    .line 150
    new-instance v1, Lcom/google/android/gms/measurement/internal/f;

    .line 151
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/measurement/n0;->o()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x1

    .line 152
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v8, v1

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_23
    move-object v7, v1

    goto/16 :goto_25

    :cond_2b
    move-object v3, v9

    move-object v4, v10

    move-object/from16 v34, v11

    move-object/from16 v46, v13

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v43, v17

    move-object/from16 v5, v18

    move-object/from16 v44, v21

    move-object/from16 v47, v23

    const/4 v6, 0x0

    if-eqz v28, :cond_2c

    .line 153
    new-instance v2, Lcom/google/android/gms/measurement/internal/f;

    move-object/from16 v50, v2

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/lang/String;

    move-object/from16 v51, v8

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/f;->b:Ljava/lang/String;

    move-object/from16 v52, v8

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/f;->c:J

    add-long v53, v8, v37

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/f;->d:J

    add-long v55, v8, v37

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/f;->e:J

    add-long v57, v8, v37

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/f;->f:J

    move-wide/from16 v59, v8

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/f;->g:J

    move-wide/from16 v61, v8

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/f;->h:Ljava/lang/Long;

    move-object/from16 v63, v8

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/f;->i:Ljava/lang/Long;

    move-object/from16 v64, v8

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/f;->j:Ljava/lang/Long;

    move-object/from16 v65, v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/f;->k:Ljava/lang/Boolean;

    move-object/from16 v66, v1

    invoke-direct/range {v50 .. v66}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_24

    .line 154
    :cond_2c
    new-instance v2, Lcom/google/android/gms/measurement/internal/f;

    move-object v8, v2

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/f;->b:Ljava/lang/String;

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/f;->c:J

    add-long v11, v11, v37

    iget-wide v13, v1, Lcom/google/android/gms/measurement/internal/f;->d:J

    add-long v13, v13, v37

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/f;->e:J

    move-wide v15, v6

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/f;->f:J

    move-wide/from16 v17, v6

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/f;->g:J

    move-wide/from16 v19, v6

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/f;->h:Ljava/lang/Long;

    move-object/from16 v21, v6

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/f;->i:Ljava/lang/Long;

    move-object/from16 v22, v6

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/f;->j:Ljava/lang/Long;

    move-object/from16 v23, v6

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/f;->k:Ljava/lang/Boolean;

    move-object/from16 v24, v1

    invoke-direct/range {v8 .. v24}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_24
    move-object v7, v2

    .line 155
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/f;)V

    .line 156
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/f;->c:J

    move-object/from16 v10, v41

    .line 157
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2e

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/e9;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 159
    new-instance v1, La/e/a;

    invoke-direct {v1}, La/e/a;-><init>()V

    .line 160
    :cond_2d
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    move-object v11, v1

    .line 161
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 162
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v14, v49

    invoke-interface {v14, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v49, v14

    goto :goto_26

    .line 164
    :cond_2f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v15, v47

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 165
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v6, v43

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    move-object/from16 v16, v1

    if-eqz v25, :cond_30

    .line 166
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-wide/from16 v17, v8

    move-object/from16 v8, v44

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 167
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object/from16 v19, v1

    goto :goto_27

    :cond_30
    move-wide/from16 v17, v8

    move-object/from16 v8, v44

    const/4 v9, 0x0

    const/16 v19, 0x0

    .line 168
    :goto_27
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v9

    move-object/from16 v9, v46

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/l0;

    if-nez v1, :cond_32

    .line 169
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l0;->w()Lcom/google/android/gms/internal/measurement/l0$a;

    move-result-object v2

    move-object/from16 v41, v10

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/l0$a;->a(Z)Lcom/google/android/gms/internal/measurement/l0$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/l0;

    .line 170
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 172
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 174
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v25, :cond_31

    .line 175
    new-instance v10, La/e/a;

    invoke-direct {v10}, La/e/a;-><init>()V

    move-object/from16 v16, v1

    .line 176
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 177
    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, La/e/a;

    invoke-direct {v1}, La/e/a;-><init>()V

    move-object/from16 v21, v2

    .line 179
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 180
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    move-object/from16 v2, v21

    move-object/from16 v16, v12

    move-object v12, v1

    goto :goto_29

    :cond_31
    move-object/from16 v16, v1

    move-object/from16 v21, v2

    goto :goto_28

    :cond_32
    move-object/from16 v41, v10

    :goto_28
    move-object/from16 v10, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v20

    .line 181
    :goto_29
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/z;

    if-eqz v28, :cond_33

    if-eqz v27, :cond_33

    .line 183
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->z()Z

    move-result v21

    if-eqz v21, :cond_33

    move-object/from16 v21, v2

    .line 184
    iget-wide v2, v7, Lcom/google/android/gms/measurement/internal/f;->e:J

    move-wide/from16 v22, v2

    goto :goto_2b

    :cond_33
    move-object/from16 v21, v2

    move-wide/from16 v22, v17

    .line 185
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f3;->a(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    .line 188
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->q()Z

    move-result v24

    if-eqz v24, :cond_34

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v37, v5

    move-object/from16 v70, v24

    move-object/from16 v24, v4

    move-object/from16 v4, v70

    goto :goto_2c

    :cond_34
    move-object/from16 v24, v4

    move-object/from16 v37, v5

    const/4 v4, 0x0

    .line 190
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v5

    move-object/from16 v43, v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Evaluating filter. audience, filter, event"

    .line 191
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/z;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v48

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_35
    move-object/from16 v24, v4

    move-object/from16 v37, v5

    move-object/from16 v43, v6

    move-object/from16 v5, v48

    .line 195
    :goto_2d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->q()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v2

    const/16 v6, 0x100

    if-le v2, v6, :cond_36

    goto/16 :goto_35

    :cond_36
    const-string v4, "Event filter result"

    if-eqz v25, :cond_3f

    .line 196
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->w()Z

    move-result v2

    .line 197
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->x()Z

    move-result v38

    if-eqz v27, :cond_37

    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->z()Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v3, 0x1

    goto :goto_2e

    :cond_37
    const/4 v3, 0x0

    :goto_2e
    if-nez v2, :cond_39

    if-nez v38, :cond_39

    if-eqz v3, :cond_38

    goto :goto_2f

    :cond_38
    const/16 v44, 0x0

    goto :goto_30

    :cond_39
    :goto_2f
    const/16 v44, 0x1

    .line 199
    :goto_30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    if-nez v44, :cond_3b

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    .line 202
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->q()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_31

    :cond_3a
    const/4 v1, 0x0

    :goto_31
    const-string v4, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 204
    invoke-virtual {v2, v4, v3, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move-object/from16 v48, v5

    move-object/from16 v2, v21

    move-object/from16 v4, v24

    move-object/from16 v5, v37

    move-object/from16 v6, v43

    goto/16 :goto_2a

    :cond_3b
    move-object/from16 v3, v19

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v45, v7

    move-object/from16 v7, v21

    move-object/from16 v2, v19

    move-object/from16 v46, v9

    move-object/from16 v21, v11

    move-object/from16 v11, p1

    move-object v9, v3

    move-object v3, v0

    move-object/from16 v67, v24

    move-object/from16 v24, v8

    move-object v8, v4

    move-object/from16 v4, v42

    move-object/from16 v69, v5

    move-object/from16 v47, v15

    move-object/from16 v15, v37

    move-object/from16 v68, v43

    move-wide/from16 v5, v22

    .line 205
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/x8;->a(Lcom/google/android/gms/internal/measurement/z;Ljava/lang/String;Ljava/util/List;J)Ljava/lang/Boolean;

    move-result-object v1

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    if-nez v1, :cond_3c

    move-object/from16 v3, v30

    goto :goto_32

    :cond_3c
    move-object v3, v1

    .line 208
    :goto_32
    invoke-virtual {v2, v8, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_3d

    .line 209
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    .line 210
    :cond_3d
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/util/BitSet;->set(I)V

    .line 211
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 212
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    if-eqz v44, :cond_46

    .line 213
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/measurement/n0;->u()Z

    move-result v1

    if-eqz v1, :cond_46

    if-eqz v38, :cond_3e

    .line 214
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v1

    .line 215
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v2

    .line 216
    invoke-static {v12, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/x8;->b(Ljava/util/Map;IJ)V

    goto/16 :goto_37

    .line 217
    :cond_3e
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v1

    .line 218
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v2

    .line 219
    invoke-static {v9, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/util/Map;IJ)V

    goto/16 :goto_37

    :cond_3f
    move-object/from16 v69, v5

    move-object/from16 v45, v7

    move-object/from16 v46, v9

    move-object/from16 v47, v15

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    move-object/from16 v67, v24

    move-object/from16 v15, v37

    move-object/from16 v68, v43

    move-object/from16 v19, v1

    move-object/from16 v24, v8

    move-object/from16 v21, v11

    move-object/from16 v11, p1

    move-object v8, v4

    .line 220
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 223
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 224
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->q()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_33

    :cond_40
    const/4 v8, 0x0

    :goto_33
    const-string v3, "Event filter already evaluated true. audience ID, filter ID"

    .line 225
    invoke-virtual {v1, v3, v2, v8}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    :cond_41
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v0

    move-object/from16 v4, v42

    move-wide/from16 v5, v22

    .line 226
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/x8;->a(Lcom/google/android/gms/internal/measurement/z;Ljava/lang/String;Ljava/util/List;J)Ljava/lang/Boolean;

    move-result-object v1

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    if-nez v1, :cond_42

    move-object/from16 v3, v30

    goto :goto_34

    :cond_42
    move-object v3, v1

    .line 229
    :goto_34
    invoke-virtual {v2, v8, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_43

    .line 230
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 231
    :cond_43
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/util/BitSet;->set(I)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 233
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_37

    :cond_44
    :goto_35
    move-object/from16 v69, v5

    move-object/from16 v45, v7

    move-object/from16 v46, v9

    move-object/from16 v47, v15

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    move-object/from16 v67, v24

    move-object/from16 v15, v37

    move-object/from16 v68, v43

    move-object/from16 v19, v1

    move-object/from16 v24, v8

    move-object/from16 v21, v11

    move-object/from16 v11, p1

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 236
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->q()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/z;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_36

    :cond_45
    const/4 v8, 0x0

    :goto_36
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 238
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    :goto_37
    move-object v2, v7

    move-object/from16 v19, v9

    move-object v3, v11

    move-object v5, v15

    move-object/from16 v11, v21

    move-object/from16 v8, v24

    move-object/from16 v7, v45

    move-object/from16 v9, v46

    move-object/from16 v15, v47

    move-object/from16 v4, v67

    move-object/from16 v6, v68

    move-object/from16 v48, v69

    goto/16 :goto_2a

    :cond_47
    move-object/from16 v43, v6

    move-object/from16 v44, v8

    move-object/from16 v46, v9

    move-object/from16 v49, v14

    move-object/from16 v47, v15

    move-object/from16 v12, v16

    move-wide/from16 v8, v17

    move-object/from16 v10, v41

    goto/16 :goto_26

    :cond_48
    move-object/from16 v7, p0

    move-object v9, v3

    move-object v8, v5

    move-object v6, v10

    move-wide/from16 v2, v35

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v17, v43

    move-object/from16 v21, v44

    move-object/from16 v13, v46

    move-object/from16 v23, v47

    move-object/from16 v14, v48

    move-object/from16 v15, v49

    move-object v10, v4

    goto/16 :goto_11

    :cond_49
    move-object v11, v9

    move-object/from16 v67, v10

    move-object/from16 v46, v13

    move-object/from16 v69, v14

    move-object v14, v15

    move-object/from16 v68, v17

    move-object/from16 v24, v21

    move-object/from16 v47, v23

    move-object v15, v8

    .line 239
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 240
    new-instance v0, La/e/a;

    invoke-direct {v0}, La/e/a;-><init>()V

    .line 241
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/v0;

    .line 242
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_4b

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Lcom/google/android/gms/measurement/internal/e9;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 244
    new-instance v3, La/e/a;

    invoke-direct {v3}, La/e/a;-><init>()V

    .line 245
    :cond_4a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_4b
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 247
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_39

    .line 249
    :cond_4c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v47

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    .line 250
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v68

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    if-eqz v25, :cond_4d

    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, v24

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 p2, v1

    move-object/from16 v1, v67

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    move-object/from16 v16, v0

    goto :goto_3a

    :cond_4d
    move-object/from16 p2, v1

    move-object/from16 v12, v24

    move-object/from16 v1, v67

    move-object/from16 v16, v0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 253
    :goto_3a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 p3, v4

    move-object/from16 v4, v46

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l0;

    if-nez v0, :cond_4e

    .line 254
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l0;->w()Lcom/google/android/gms/internal/measurement/l0$a;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/l0$a;->a(Z)Lcom/google/android/gms/internal/measurement/l0$a;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/l0;

    .line 255
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    .line 259
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v25, :cond_4e

    .line 260
    new-instance v10, La/e/a;

    invoke-direct {v10}, La/e/a;-><init>()V

    .line 261
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 262
    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v13, La/e/a;

    invoke-direct {v13}, La/e/a;-><init>()V

    .line 264
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 265
    invoke-interface {v1, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_4e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/google/android/gms/internal/measurement/c0;

    move-object/from16 v17, v3

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    move-object/from16 v37, v15

    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/f3;->a(I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 271
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->p()Z

    move-result v19

    if-eqz v19, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v67, v1

    move-object/from16 v11, v19

    goto :goto_3c

    :cond_4f
    move-object/from16 v67, v1

    const/4 v11, 0x0

    .line 273
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v1

    move-object/from16 v44, v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->o()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "Evaluating filter. audience, filter, property"

    .line 274
    invoke-virtual {v3, v12, v15, v11, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->k()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/c0;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v69

    invoke-virtual {v1, v11, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3d

    :cond_50
    move-object/from16 v67, v1

    move-object/from16 v44, v12

    move-object/from16 v11, v69

    .line 278
    :goto_3d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->p()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v1

    const/16 v3, 0x100

    if-le v1, v3, :cond_51

    goto/16 :goto_47

    :cond_51
    const-string v1, "Property filter result"

    if-eqz v25, :cond_5f

    .line 279
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->q()Z

    move-result v12

    .line 280
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->s()Z

    move-result v15

    if-eqz v27, :cond_52

    .line 281
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->v()Z

    move-result v19

    if-eqz v19, :cond_52

    const/16 v19, 0x1

    goto :goto_3e

    :cond_52
    const/16 v19, 0x0

    :goto_3e
    if-nez v12, :cond_54

    if-nez v15, :cond_54

    if-eqz v19, :cond_53

    goto :goto_3f

    :cond_53
    const/4 v12, 0x0

    goto :goto_40

    :cond_54
    :goto_3f
    const/4 v12, 0x1

    .line 282
    :goto_40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_56

    if-nez v12, :cond_56

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->p()Z

    move-result v12

    if-eqz v12, :cond_55

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_41

    :cond_55
    const/4 v0, 0x0

    :goto_41
    const-string v12, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 287
    invoke-virtual {v1, v12, v3, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v69, v11

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    move-object/from16 v15, v37

    move-object/from16 v12, v44

    move-object/from16 v1, v67

    move-object/from16 v11, p1

    goto/16 :goto_3b

    :cond_56
    move-object/from16 v3, p0

    .line 288
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/x8;->a(Lcom/google/android/gms/internal/measurement/c0;Lcom/google/android/gms/internal/measurement/v0;)Ljava/lang/Boolean;

    move-result-object v20

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v21

    move-object/from16 v48, v11

    .line 290
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v11

    move-object/from16 v43, v9

    if-nez v20, :cond_57

    move-object/from16 v9, v30

    goto :goto_42

    :cond_57
    move-object/from16 v9, v20

    .line 291
    :goto_42
    invoke-virtual {v11, v1, v9}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v20, :cond_58

    .line 292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 293
    :cond_58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->set(I)V

    if-eqz v27, :cond_59

    if-eqz v19, :cond_59

    .line 294
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_59
    if-eqz v26, :cond_5b

    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->q()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 296
    :cond_5a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v6, v1, v9}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_43

    .line 297
    :cond_5b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v6, v1, v9}, Ljava/util/BitSet;->set(IZ)V

    .line 298
    :cond_5c
    :goto_43
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_61

    if-eqz v12, :cond_61

    .line 299
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v0;->w()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 300
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v0;->x()J

    move-result-wide v11

    if-eqz v27, :cond_5d

    if-eqz v19, :cond_5d

    if-eqz v29, :cond_5d

    .line 301
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :cond_5d
    if-eqz v15, :cond_5e

    .line 302
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v0

    .line 303
    invoke-static {v13, v0, v11, v12}, Lcom/google/android/gms/measurement/internal/x8;->b(Ljava/util/Map;IJ)V

    goto :goto_45

    .line 304
    :cond_5e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v0

    .line 305
    invoke-static {v10, v0, v11, v12}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/util/Map;IJ)V

    goto :goto_45

    :cond_5f
    move-object/from16 v3, p0

    move-object/from16 v43, v9

    move-object/from16 v48, v11

    .line 306
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 310
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->p()Z

    move-result v11

    if-eqz v11, :cond_60

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_44

    :cond_60
    const/4 v0, 0x0

    :goto_44
    const-string v11, "Property filter already evaluated true. audience ID, filter ID"

    .line 311
    invoke-virtual {v1, v11, v9, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    :goto_45
    move-object/from16 v11, p1

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    move-object/from16 v15, v37

    move-object/from16 v9, v43

    move-object/from16 v12, v44

    move-object/from16 v69, v48

    move-object/from16 v1, v67

    goto/16 :goto_3b

    .line 312
    :cond_62
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/x8;->a(Lcom/google/android/gms/internal/measurement/c0;Lcom/google/android/gms/internal/measurement/v0;)Ljava/lang/Boolean;

    move-result-object v9

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v11

    .line 314
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v11

    if-nez v9, :cond_63

    move-object/from16 v12, v30

    goto :goto_46

    :cond_63
    move-object v12, v9

    .line 315
    :goto_46
    invoke-virtual {v11, v1, v12}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_64

    .line 316
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 317
    :cond_64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->set(I)V

    .line 318
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 319
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_45

    :cond_65
    :goto_47
    move-object/from16 v3, p0

    move-object/from16 v43, v9

    move-object/from16 v48, v11

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 322
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->p()Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c0;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_48

    :cond_66
    const/4 v8, 0x0

    :goto_48
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "Invalid property filter ID. appId, id"

    .line 324
    invoke-virtual {v1, v8, v6, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    move-object/from16 v46, v4

    move-object/from16 v47, v7

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v15, v37

    move-object/from16 v68, v43

    move-object/from16 v24, v44

    move-object/from16 v69, v48

    goto :goto_49

    :cond_67
    move-object/from16 v17, v3

    move-object/from16 v3, p0

    move-object/from16 v11, p1

    move-object/from16 v67, v1

    move-object/from16 v46, v4

    move-object/from16 v47, v7

    move-object/from16 v68, v9

    move-object/from16 v24, v12

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v1, p2

    :goto_49
    move-object/from16 v4, p3

    goto/16 :goto_39

    :cond_68
    move-object/from16 v3, p0

    move-object/from16 v11, p1

    goto/16 :goto_38

    :cond_69
    move-object/from16 v3, p0

    move-object/from16 v44, v24

    move-object/from16 v4, v46

    move-object/from16 v7, v47

    move-object/from16 v43, v68

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/l0;

    if-nez v5, :cond_6a

    .line 330
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l0;->w()Lcom/google/android/gms/internal/measurement/l0$a;

    move-result-object v5

    goto :goto_4b

    .line 331
    :cond_6a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v5

    .line 332
    check-cast v5, Lcom/google/android/gms/internal/measurement/l0$a;

    .line 333
    :goto_4b
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/l0$a;->a(I)Lcom/google/android/gms/internal/measurement/l0$a;

    .line 334
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t0;->B()Lcom/google/android/gms/internal/measurement/t0$a;

    move-result-object v6

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/t0$a;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v43

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/n8;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/t0$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    if-eqz v25, :cond_77

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v10, v44

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 338
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    .line 339
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/t0$a;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    .line 340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v11, v67

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_6b

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object/from16 p2, v2

    move-object/from16 v47, v7

    move-object v12, v8

    goto/16 :goto_4e

    .line 342
    :cond_6b
    new-instance v12, Ljava/util/ArrayList;

    .line 343
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 p2, v2

    .line 345
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u0;->v()Lcom/google/android/gms/internal/measurement/u0$a;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/u0$a;->a(I)Lcom/google/android/gms/internal/measurement/u0$a;

    .line 346
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6c

    .line 347
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 348
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 v47, v7

    move-object/from16 p3, v8

    .line 349
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/u0$a;->a(J)Lcom/google/android/gms/internal/measurement/u0$a;

    move-object/from16 v8, p3

    move-object/from16 v7, v47

    goto :goto_4d

    :cond_6c
    move-object/from16 v47, v7

    move-object/from16 p3, v8

    .line 350
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/u0;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move-object/from16 v7, v47

    goto :goto_4c

    :cond_6d
    move-object/from16 p2, v2

    move-object/from16 v47, v7

    :goto_4e
    if-eqz v26, :cond_6e

    .line 351
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/l0$a;->i()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 352
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/l0$a;->j()Lcom/google/android/gms/internal/measurement/t0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/t0;->v()Ljava/util/List;

    move-result-object v2

    .line 353
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6f

    :cond_6e
    const/4 v15, 0x0

    goto/16 :goto_54

    .line 354
    :cond_6f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    new-instance v7, La/e/a;

    invoke-direct {v7}, La/e/a;-><init>()V

    .line 356
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/u0;

    .line 357
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0;->o()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 358
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0;->q()I

    move-result v12

    if-lez v12, :cond_70

    .line 359
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0;->n()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 360
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0;->q()I

    move-result v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    .line 361
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/u0;->b(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 362
    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_70
    const/4 v15, 0x1

    goto :goto_4f

    :cond_71
    const/4 v15, 0x1

    const/4 v2, 0x0

    .line 363
    :goto_50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_75

    .line 364
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/u0;

    .line 365
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0;->o()Z

    move-result v12

    if-eqz v12, :cond_72

    .line 366
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0;->n()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_51

    :cond_72
    const/4 v12, 0x0

    .line 367
    :goto_51
    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_74

    .line 368
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/u0;->b(I)J

    move-result-wide v18

    cmp-long v20, v16, v18

    if-gez v20, :cond_73

    .line 370
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_73
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0;->p()Ljava/util/List;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v8

    .line 373
    check-cast v8, Lcom/google/android/gms/internal/measurement/u0$a;

    .line 374
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u0$a;->h()Lcom/google/android/gms/internal/measurement/u0$a;

    .line 375
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/u0$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/u0$a;

    .line 376
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/u0;

    .line 377
    invoke-interface {v3, v2, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_74
    const/4 v15, 0x0

    :goto_52
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x1

    goto :goto_50

    :cond_75
    const/4 v15, 0x0

    .line 378
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 379
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u0;->v()Lcom/google/android/gms/internal/measurement/u0$a;

    move-result-object v12

    .line 380
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/u0$a;->a(I)Lcom/google/android/gms/internal/measurement/u0$a;

    .line 381
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object/from16 p3, v7

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Lcom/google/android/gms/internal/measurement/u0$a;->a(J)Lcom/google/android/gms/internal/measurement/u0$a;

    .line 382
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/u0;

    .line 383
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p3

    goto :goto_53

    :cond_76
    move-object v12, v3

    .line 384
    :goto_54
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/measurement/t0$a;->d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/t0$a;

    goto :goto_55

    :cond_77
    move-object/from16 p2, v2

    move-object/from16 v47, v7

    move-object/from16 v10, v44

    move-object/from16 v11, v67

    const/4 v15, 0x0

    .line 385
    :goto_55
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/l0$a;->a(Lcom/google/android/gms/internal/measurement/t0$a;)Lcom/google/android/gms/internal/measurement/l0$a;

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/l0;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/l0;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    .line 389
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/l0$a;->h()Lcom/google/android/gms/internal/measurement/t0;

    move-result-object v3

    .line 390
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 391
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 392
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    invoke-static {v3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/j2;->e()[B

    move-result-object v3

    .line 395
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "app_id"

    move-object/from16 v7, p1

    .line 396
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "audience_id"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    .line 398
    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 399
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "audience_filter_values"
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v6, 0x5

    const/4 v8, 0x0

    .line 400
    :try_start_5
    invoke-virtual {v0, v3, v8, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5

    const-wide/16 v12, -0x1

    cmp-long v0, v5, v12

    if-nez v0, :cond_78

    .line 401
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    .line 403
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_57

    :catch_4
    move-exception v0

    goto :goto_56

    :catch_5
    move-exception v0

    const/4 v8, 0x0

    .line 404
    :goto_56
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    .line 406
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Error storing filter results. appId"

    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_78
    :goto_57
    move-object/from16 v3, p0

    move-object/from16 v2, p2

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v67, v11

    goto :goto_58

    :cond_79
    move-object/from16 v47, v7

    move-object/from16 v7, p1

    move-object/from16 v3, p0

    :goto_58
    move-object/from16 v7, v47

    goto/16 :goto_4a

    :cond_7a
    return-object v1
.end method

.method protected final r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
