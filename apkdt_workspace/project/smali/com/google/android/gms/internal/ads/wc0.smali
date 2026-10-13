.class public final Lcom/google/android/gms/internal/ads/wc0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/ks1;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/internal/ads/ec0;

.field private d:Lcom/google/android/gms/internal/ads/zzawv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/ec0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wc0;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wc0;->d:Lcom/google/android/gms/internal/ads/zzawv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wc0;->a:Lcom/google/android/gms/internal/ads/ks1;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wc0;->c:Lcom/google/android/gms/internal/ads/ec0;

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/tc0;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/us1;->k()Lcom/google/android/gms/internal/ads/us1$c;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/wc0;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/us1$c;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/us1$c;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/us1$c;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/us1$c;

    const/4 v4, 0x0

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/tc0;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 8
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/us1$c;->a(I)Lcom/google/android/gms/internal/ads/us1$c;

    .line 9
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/us1$c;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/us1$c;

    const/4 v6, 0x1

    .line 10
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/tc0;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 11
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/us1$c;->b(I)Lcom/google/android/gms/internal/ads/us1$c;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/us1$c;->a(J)Lcom/google/android/gms/internal/ads/us1$c;

    const/4 v6, 0x2

    .line 13
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/tc0;->b(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v7

    .line 14
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/us1$c;->b(J)Lcom/google/android/gms/internal/ads/us1$c;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/us1;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v8, 0x0

    move-wide v11, v8

    const/4 v10, 0x0

    :cond_0
    :goto_0
    if-ge v10, v7, :cond_1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Lcom/google/android/gms/internal/ads/us1$a;

    .line 17
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/us1$a;->m()Lcom/google/android/gms/internal/ads/bt1;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/internal/ads/bt1;->zzbvk:Lcom/google/android/gms/internal/ads/bt1;

    if-ne v14, v15, :cond_0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/us1$a;->k()J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-lez v16, :cond_0

    .line 18
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/us1$a;->k()J

    move-result-wide v11

    goto :goto_0

    :cond_1
    const-string v2, "offline_signal_statistics"

    const-string v7, "value"

    const/4 v10, 0x0

    cmp-long v13, v11, v8

    if-eqz v13, :cond_2

    .line 19
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "statistic_name = \'last_successful_request_time\'"

    .line 21
    invoke-virtual {v1, v2, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 22
    :cond_2
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/wc0;->a:Lcom/google/android/gms/internal/ads/ks1;

    new-instance v9, Lcom/google/android/gms/internal/ads/yc0;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/yc0;-><init>(Lcom/google/android/gms/internal/ads/us1;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/ks1;->a(Lcom/google/android/gms/internal/ads/js1;)V

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/ads/rt1;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/rt1;-><init>()V

    .line 24
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/wc0;->d:Lcom/google/android/gms/internal/ads/zzawv;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzawv;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/gms/internal/ads/rt1;->c:Ljava/lang/Integer;

    .line 25
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/wc0;->d:Lcom/google/android/gms/internal/ads/zzawv;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzawv;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/gms/internal/ads/rt1;->d:Ljava/lang/Integer;

    .line 26
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/wc0;->d:Lcom/google/android/gms/internal/ads/zzawv;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/zzawv;->h:Z

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/rt1;->e:Ljava/lang/Integer;

    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/wc0;->a:Lcom/google/android/gms/internal/ads/ks1;

    new-instance v6, Lcom/google/android/gms/internal/ads/xc0;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/xc0;-><init>(Lcom/google/android/gms/internal/ads/rt1;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/ks1;->a(Lcom/google/android/gms/internal/ads/js1;)V

    .line 28
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/wc0;->a:Lcom/google/android/gms/internal/ads/ks1;

    sget-object v4, Lcom/google/android/gms/internal/ads/ms1;->zzbtk:Lcom/google/android/gms/internal/ads/ms1;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ks1;->a(Lcom/google/android/gms/internal/ads/ms1;)V

    const-string v3, "offline_signal_contents"

    .line 29
    invoke-virtual {v1, v3, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 31
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "failed_requests"

    .line 32
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "statistic_name = ?"

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 34
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "total_requests"

    .line 35
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v10
.end method

.method public final a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wc0;->c:Lcom/google/android/gms/internal/ads/ec0;

    new-instance v1, Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/vc0;-><init>(Lcom/google/android/gms/internal/ads/wc0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ec0;->a(Lcom/google/android/gms/internal/ads/fu0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error in offline signals database startup: "

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    return-void
.end method
