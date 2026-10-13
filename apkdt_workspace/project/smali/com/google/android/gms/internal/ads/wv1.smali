.class public final Lcom/google/android/gms/internal/ads/wv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/ConditionVariable;

.field private volatile c:Z

.field private volatile d:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private e:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/os/Bundle;

.field private g:Landroid/content/Context;

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->b:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wv1;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wv1;->d:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->f:Landroid/os/Bundle;

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->h:Lorg/json/JSONObject;

    return-void
.end method

.method private final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->g:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/yv1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/yv1;-><init>(Lcom/google/android/gms/internal/ads/wv1;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xc;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wv1;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/pv1<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->b:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv1;->d:Z

    if-eqz v1, :cond_0

    .line 32
    monitor-exit v0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 35
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wv1;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv1;->c:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pv1;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->f:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pv1;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 42
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/pv1;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pv1;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->h:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pv1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->h:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/pv1;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->g:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zv1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zv1;-><init>(Lcom/google/android/gms/internal/ads/wv1;Lcom/google/android/gms/internal/ads/pv1;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xc;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_8
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pv1;->c()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method final synthetic a()Ljava/lang/String;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    const-string v1, "flag_configuration"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wv1;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv1;->c:Z

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv1;->d:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/wv1;->d:Z

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wv1;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv1;->g:Landroid/content/Context;

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/wv1;->g:Landroid/content/Context;

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/common/o/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wv1;->f:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    const/4 v1, 0x0

    .line 11
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_4

    move-object v3, p1

    :cond_4
    if-nez v3, :cond_5

    .line 13
    :try_start_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv1;->d:Z

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv1;->b:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 15
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->c()Lcom/google/android/gms/internal/ads/xv1;

    const-string p1, "google_ads_flags"

    .line 16
    invoke-virtual {v3, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 20
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/bw1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bw1;-><init>(Lcom/google/android/gms/internal/ads/wv1;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xw1;->a(Lcom/google/android/gms/internal/ads/yw1;)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wv1;->b()V

    .line 22
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/wv1;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :try_start_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv1;->d:Z

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv1;->b:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 26
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv1;->d:Z

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv1;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw p1

    :catchall_1
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv1;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/pv1;->a(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "flag_configuration"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wv1;->b()V

    :cond_0
    return-void
.end method
