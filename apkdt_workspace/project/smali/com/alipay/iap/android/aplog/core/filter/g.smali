.class public Lcom/alipay/iap/android/aplog/core/filter/g;
.super Ljava/lang/Object;
.source "StrategyManager.java"

# interfaces
.implements Lcom/alipay/iap/android/aplog/core/filter/a;


# static fields
.field private static final k:J

.field public static l:J

.field private static m:J

.field private static n:Lcom/alipay/iap/android/aplog/core/filter/g;

.field private static o:J


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/alipay/iap/android/aplog/core/filter/f;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/iap/android/aplog/core/filter/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/iap/android/aplog/core/filter/g;->k:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/iap/android/aplog/core/filter/g;->l:J

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/iap/android/aplog/core/filter/g;->m:J

    .line 5
    sget-wide v0, Lcom/alipay/iap/android/aplog/core/filter/g;->m:J

    sput-wide v0, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->g:Z

    .line 3
    new-instance v1, Lcom/alipay/iap/android/aplog/core/filter/f;

    invoke-direct {v1}, Lcom/alipay/iap/android/aplog/core/filter/f;-><init>()V

    iput-object v1, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->h:Lcom/alipay/iap/android/aplog/core/filter/f;

    .line 4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->i:Ljava/util/Map;

    .line 5
    iput v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->j:I

    .line 6
    iput-object p1, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->a:Landroid/content/Context;

    .line 7
    invoke-direct {p0}, Lcom/alipay/iap/android/aplog/core/filter/g;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/iap/android/aplog/core/filter/g;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->j:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/iap/android/aplog/core/filter/g;
    .locals 1

    .line 6
    sget-object v0, Lcom/alipay/iap/android/aplog/core/filter/g;->n:Lcom/alipay/iap/android/aplog/core/filter/g;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/alipay/iap/android/aplog/core/filter/g;

    invoke-direct {v0, p0}, Lcom/alipay/iap/android/aplog/core/filter/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/iap/android/aplog/core/filter/g;->n:Lcom/alipay/iap/android/aplog/core/filter/g;

    .line 8
    :cond_0
    sget-object p0, Lcom/alipay/iap/android/aplog/core/filter/g;->n:Lcom/alipay/iap/android/aplog/core/filter/g;

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .line 2
    invoke-static {}, Le/b/b/a/a/d/a/c;->c()Le/b/b/a/a/d/a/c;

    move-result-object v0

    invoke-virtual {v0}, Le/b/b/a/a/d/a/c;->b()Le/b/b/a/a/d/a/d;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "cleaningFileSize"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Le/b/b/a/a/d/a/d;->b(I)V

    const-string v1, "outdate"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Le/b/b/a/a/d/a/d;->a(I)V

    const-string v1, "cleaningRate"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/b/b/a/a/d/a/d;->a(D)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/alipay/iap/android/aplog/core/filter/g;
    .locals 2

    .line 2
    sget-object v0, Lcom/alipay/iap/android/aplog/core/filter/g;->n:Lcom/alipay/iap/android/aplog/core/filter/g;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need createInstance before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/alipay/iap/android/aplog/core/filter/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/iap/android/aplog/core/filter/g;->e()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/alipay/iap/android/aplog/core/filter/h;

    invoke-direct {v1, p0}, Lcom/alipay/iap/android/aplog/core/filter/h;-><init>(Lcom/alipay/iap/android/aplog/core/filter/g;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "content"

    const-string v1, "StrategyManager"

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    const-string v3, "syncRequestLogConfig: has configs"

    invoke-interface {p1, v1, v3}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/alipay/iap/android/aplog/core/filter/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v2, "FormatConfig JSONException"

    invoke-static {p1, v2}, Le/b/b/a/a/e/c;->a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-static {}, Le/b/b/a/b/a/a;->a()Le/b/b/a/b/a/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/iap/android/aplog/core/filter/i;

    invoke-direct {v1, p0}, Lcom/alipay/iap/android/aplog/core/filter/i;-><init>(Lcom/alipay/iap/android/aplog/core/filter/g;)V

    const-string v2, "IAPLogConfig"

    invoke-virtual {v0, v2, v1}, Le/b/b/a/b/a/a;->a(Ljava/lang/String;Le/b/b/a/b/a/c;)V

    .line 2
    invoke-direct {p0}, Lcom/alipay/iap/android/aplog/core/filter/g;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "upInterval"

    const-string v3, "yes"

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result v4

    const-string v5, "StrategyManager"

    if-eqz v4, :cond_1

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseLogStrategy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 8
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v15, "parseLogStrategy"

    if-eqz v0, :cond_1c

    .line 9
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1d

    const/16 v16, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v7, v17

    goto :goto_1

    :catchall_0
    move-object/from16 v7, v16

    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v21, v2

    move-object/from16 v27, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    :goto_2
    move/from16 v25, v14

    goto/16 :goto_15

    :cond_2
    :try_start_2
    const-string v8, "positiveDiagnoseLog"

    .line 11
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1d

    move-object/from16 v19, v4

    const-string v4, "event"

    move-object/from16 v20, v6

    const-string v6, "send"

    if-eqz v8, :cond_b

    .line 12
    :try_start_3
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    .line 13
    iput v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1c

    .line 14
    :try_start_4
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    .line 16
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 17
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "none"

    .line 18
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    .line 19
    iput v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I

    goto :goto_4

    :cond_3
    const-string v8, "wifi"

    .line 20
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    .line 21
    iput v6, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 22
    :catchall_1
    :cond_5
    :goto_4
    :try_start_5
    iget v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    mul-long v6, v6, v8

    sput-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    .line 24
    sget-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_6

    .line 25
    sget-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->m:J

    sput-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    goto :goto_5

    .line 26
    :cond_6
    sget-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    sget-wide v8, Lcom/alipay/iap/android/aplog/core/filter/g;->l:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    .line 27
    sget-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->l:J

    sput-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    goto :goto_5

    .line 28
    :cond_7
    sget-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    sget-wide v8, Lcom/alipay/iap/android/aplog/core/filter/g;->k:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    .line 29
    sget-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->k:J

    sput-wide v6, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_8
    :goto_5
    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    .line 30
    :try_start_6
    iput v4, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I

    :catchall_2
    :cond_a
    :goto_6
    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_b
    const-string v8, "zipAndSevenZip"

    .line 31
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x2

    .line 32
    iput v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->c:I

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_c
    const-string v8, "disableToolsProcess"

    .line 33
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x2

    .line 34
    iput v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->d:I

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_d
    const-string v8, "enableTrafficLimit"

    .line 35
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    .line 36
    iput v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->e:I

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_e
    const-string v8, "disable_nolock_log"

    .line 37
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    .line 38
    iput v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->f:I

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_f
    const-string v8, "realtimeConfig"

    .line 39
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1c

    if-eqz v8, :cond_12

    :try_start_7
    const-string v0, "interval"

    .line 40
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 41
    iget-object v4, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->h:Lcom/alipay/iap/android/aplog/core/filter/f;

    invoke-virtual {v4, v0}, Lcom/alipay/iap/android/aplog/core/filter/f;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :try_start_8
    const-string v0, "enable"

    .line 42
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "no"

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "false"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_7

    .line 44
    :cond_10
    iget-object v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->h:Lcom/alipay/iap/android/aplog/core/filter/f;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alipay/iap/android/aplog/core/filter/f;->a(Z)V

    goto/16 :goto_13

    .line 45
    :cond_11
    :goto_7
    iget-object v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->h:Lcom/alipay/iap/android/aplog/core/filter/f;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alipay/iap/android/aplog/core/filter/f;->a(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1b

    goto/16 :goto_13

    :cond_12
    :try_start_9
    const-string v8, "config"

    .line 46
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 47
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    :cond_13
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1c

    if-eqz v8, :cond_1b

    .line 49
    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1a

    .line 50
    :try_start_b
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_9

    :catchall_4
    move-object/from16 v8, v16

    :goto_9
    if-nez v8, :cond_14

    goto :goto_8

    .line 51
    :cond_14
    :try_start_c
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    .line 52
    :goto_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1a

    if-eqz v21, :cond_13

    .line 53
    :try_start_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_16

    move-object/from16 v22, v0

    :try_start_e
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_17

    move-object/from16 v21, v2

    .line 54
    :try_start_f
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_18

    move-object/from16 v23, v7

    .line 55
    :try_start_10
    new-instance v7, Lcom/alipay/iap/android/aplog/core/filter/c;

    invoke-direct {v7}, Lcom/alipay/iap/android/aplog/core/filter/c;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_15

    move-object/from16 v24, v8

    :try_start_11
    const-string v8, "write"

    .line 56
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->a:Z

    const-string v8, "apm"

    .line 57
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 58
    iget-boolean v8, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->a:Z

    iput-boolean v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->g:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_14

    :cond_15
    :try_start_12
    const-string v8, "level"

    .line 59
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    :try_start_13
    const-string v8, "realtime"

    .line 60
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    iget-object v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->h:Lcom/alipay/iap/android/aplog/core/filter/f;

    invoke-virtual {v8}, Lcom/alipay/iap/android/aplog/core/filter/f;->a()Ljava/util/Map;

    move-result-object v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move/from16 v25, v14

    const/16 v18, 0x1

    :try_start_14
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v8, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_b

    :catchall_6
    move/from16 v25, v14

    .line 62
    :catchall_7
    :try_start_15
    iget-object v8, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->h:Lcom/alipay/iap/android/aplog/core/filter/f;

    invoke-virtual {v8}, Lcom/alipay/iap/android/aplog/core/filter/f;->a()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_13

    :goto_b
    :try_start_16
    const-string v8, "uploadRate"

    .line 63
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :catchall_8
    :try_start_17
    const-string v8, "levelRate1"

    .line 64
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :catchall_9
    :try_start_18
    const-string v8, "levelRate2"

    .line 65
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :catchall_a
    :try_start_19
    const-string v8, "levelRate3"

    .line 66
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :catchall_b
    :try_start_1a
    const-string v8, "uploadInterval"

    .line 67
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :catchall_c
    :try_start_1b
    const-string v8, "encrypt"

    .line 68
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->b:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    const/4 v8, 0x0

    goto :goto_c

    :catchall_d
    const/4 v8, 0x0

    .line 69
    :try_start_1c
    iput-boolean v8, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->b:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    .line 70
    :goto_c
    :try_start_1d
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    move-object/from16 v27, v3

    const/16 v26, 0x0

    .line 71
    :goto_d
    :try_start_1e
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v8, v3, :cond_18

    .line 72
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    move-object/from16 v28, v6

    .line 73
    :try_start_1f
    iget-object v6, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "2g"

    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "3g"

    .line 75
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "4g"

    .line 76
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const/16 v26, 0x1

    :cond_17
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v28

    goto :goto_d

    :cond_18
    move-object/from16 v28, v6

    if-eqz v26, :cond_19

    .line 77
    iget-object v3, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->e:Ljava/util/List;

    const-string v6, "mobile"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const/4 v3, 0x1

    .line 78
    iput-boolean v3, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->c:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    goto :goto_e

    :catchall_e
    move-object/from16 v27, v3

    :catchall_f
    move-object/from16 v28, v6

    .line 79
    :catchall_10
    :goto_e
    :try_start_20
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v6, 0x0

    .line 80
    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_1a

    .line 81
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 82
    iget-object v14, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->f:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :catchall_11
    :cond_1a
    :try_start_21
    const-string v3, "maxLogCount"

    .line 83
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v7, Lcom/alipay/iap/android/aplog/core/filter/c;->d:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 84
    :catchall_12
    :try_start_22
    iget-object v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_19

    goto :goto_12

    :catchall_13
    move-object/from16 v27, v3

    move-object/from16 v28, v6

    goto :goto_12

    :catchall_14
    move-object/from16 v27, v3

    move-object/from16 v28, v6

    goto :goto_11

    :catchall_15
    move-object/from16 v27, v3

    move-object/from16 v28, v6

    goto :goto_10

    :catchall_16
    move-object/from16 v22, v0

    :catchall_17
    move-object/from16 v21, v2

    :catchall_18
    move-object/from16 v27, v3

    move-object/from16 v28, v6

    move-object/from16 v23, v7

    :goto_10
    move-object/from16 v24, v8

    :goto_11
    move/from16 v25, v14

    :catchall_19
    :goto_12
    move-object/from16 v2, v21

    move-object/from16 v0, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move/from16 v14, v25

    move-object/from16 v3, v27

    move-object/from16 v6, v28

    goto/16 :goto_a

    :catchall_1a
    move-object/from16 v22, v0

    move-object/from16 v21, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v6

    move-object/from16 v23, v7

    move/from16 v25, v14

    move-object/from16 v2, v21

    move-object/from16 v0, v22

    move-object/from16 v7, v23

    move/from16 v14, v25

    move-object/from16 v3, v27

    move-object/from16 v6, v28

    goto/16 :goto_8

    :catchall_1b
    :cond_1b
    :goto_13
    move-object/from16 v21, v2

    move-object/from16 v27, v3

    goto/16 :goto_2

    :catchall_1c
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v27, v3

    goto :goto_14

    :catchall_1d
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v27, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    :goto_14
    move/from16 v25, v14

    .line 85
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v2

    invoke-interface {v2, v5, v15, v0}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v2, v21

    move/from16 v14, v25

    move-object/from16 v3, v27

    goto/16 :goto_0

    :cond_1c
    move/from16 v25, v14

    const/4 v2, 0x1

    if-nez v9, :cond_1d

    .line 86
    iput v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I

    .line 87
    :cond_1d
    iget v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I

    if-eq v0, v2, :cond_1e

    if-nez v10, :cond_1f

    .line 88
    :cond_1e
    sget-wide v3, Lcom/alipay/iap/android/aplog/core/filter/g;->m:J

    sput-wide v3, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    :cond_1f
    if-nez v11, :cond_20

    .line 89
    iput v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->c:I

    :cond_20
    if-nez v12, :cond_21

    .line 90
    iput v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->d:I

    :cond_21
    const/4 v0, 0x2

    if-nez v13, :cond_22

    .line 91
    iput v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->e:I

    :cond_22
    if-nez v25, :cond_23

    .line 92
    iput v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->f:I

    .line 93
    :cond_23
    iget-object v0, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->a:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "LogStrategyConfig"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I

    const-string v3, "PositiveDiagnose"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    sget-wide v2, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    const-string v4, "CurrentRequestTimeSpan"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->c:I

    const-string v3, "ZipAndSevenZip"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->d:I

    const-string v3, "DisableToolsProcess"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->e:I

    const-string v3, "EnableTrafficLimit"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->f:I

    const-string v3, "Disable_NoLock_Log"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", positiveDiagnoseTag: "

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CURRENT_REQUEST_TIME_SPAN: "

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/alipay/iap/android/aplog/core/filter/g;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", zipAndSevenZipTag: "

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", disableToolsProcessTag: "

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enableTrafficLimitTag: "

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", disableNoLockLog: "

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alipay/iap/android/aplog/core/filter/g;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Le/b/b/a/b/a/a;->a()Le/b/b/a/b/a/a;

    move-result-object v0

    const-string v1, "IAPLogConfig"

    invoke-virtual {v0, v1}, Le/b/b/a/b/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->j:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/alipay/iap/android/aplog/core/filter/g;->c()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "uploadStrategy"

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/alipay/iap/android/aplog/core/filter/g;->c(Ljava/lang/String;)V

    const-string v0, "diagnosticConfig"

    .line 8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/alipay/iap/android/aplog/core/filter/g;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    const-string v2, "parseLogStrategy JSONException"

    invoke-static {v0, v2}, Le/b/b/a/a/e/c;->a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "StrategyManager"

    invoke-interface {v1, v2, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "_"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    .line 11
    aget-object p1, p1, v0

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    .line 13
    :cond_1
    invoke-static {}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c()Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "unknown"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/iap/android/aplog/core/filter/c;

    if-eqz v0, :cond_7

    .line 16
    iget-boolean v2, v0, Lcom/alipay/iap/android/aplog/core/filter/c;->c:Z

    if-nez v2, :cond_3

    return-object p1

    :cond_3
    const-string v2, "4g"

    .line 17
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/alipay/iap/android/aplog/core/filter/c;->e:Ljava/util/List;

    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    const-string v2, "3g"

    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/alipay/iap/android/aplog/core/filter/c;->e:Ljava/util/List;

    .line 20
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return-object v1

    :cond_5
    const-string v2, "2g"

    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/alipay/iap/android/aplog/core/filter/c;->e:Ljava/util/List;

    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_6
    const-string v2, "wifi"

    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v0, Lcom/alipay/iap/android/aplog/core/filter/c;->e:Ljava/util/List;

    .line 24
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    return-object v1

    :cond_7
    return-object p1
.end method

.method public a(J)V
    .locals 0

    .line 32
    sput-wide p1, Lcom/alipay/iap/android/aplog/core/filter/g;->m:J

    return-void
.end method

.method public a()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->g:Z

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/iap/android/aplog/core/filter/c;

    .line 26
    new-instance v1, Lcom/alipay/iap/android/aplog/core/filter/e;

    invoke-direct {v1}, Lcom/alipay/iap/android/aplog/core/filter/e;-><init>()V

    .line 27
    iput-object p1, v1, Lcom/alipay/iap/android/aplog/core/filter/e;->b:Ljava/lang/String;

    .line 28
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/d;->b()Lcom/alipay/iap/android/aplog/core/filter/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/d;->b()Lcom/alipay/iap/android/aplog/core/filter/b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/alipay/iap/android/aplog/core/filter/b;->a(Lcom/alipay/iap/android/aplog/core/filter/e;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    .line 30
    iget-boolean p1, v0, Lcom/alipay/iap/android/aplog/core/filter/c;->a:Z

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alipay/iap/android/aplog/core/filter/g;->b(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/iap/android/aplog/core/filter/c;

    if-nez p1, :cond_1

    return v1

    .line 14
    :cond_1
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " needEncrypt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/alipay/iap/android/aplog/core/filter/c;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StrategyManager"

    invoke-interface {v0, v2, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-boolean p1, p1, Lcom/alipay/iap/android/aplog/core/filter/c;->b:Z

    return p1
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "userbehavor"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-nez v0, :cond_5

    const-string v0, "autouserbehavor"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "alivereport"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const-string v0, "crash"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "bizHighAvail"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "apm"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x64

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v1, 0x32

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/core/filter/g;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/iap/android/aplog/core/filter/c;

    if-eqz p1, :cond_6

    .line 11
    iget p1, p1, Lcom/alipay/iap/android/aplog/core/filter/c;->d:I

    if-lez p1, :cond_6

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    if-lt p2, p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    return v2
.end method
