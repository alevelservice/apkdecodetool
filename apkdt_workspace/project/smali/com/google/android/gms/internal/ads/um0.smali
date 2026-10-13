.class public final Lcom/google/android/gms/internal/ads/um0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/vm0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tz0;

.field private final b:Lcom/google/android/gms/internal/ads/ws0;

.field private final c:Landroid/content/pm/PackageInfo;

.field private final d:Lcom/google/android/gms/internal/ads/pa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tz0;Lcom/google/android/gms/internal/ads/ws0;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/pa;)V
    .locals 0
    .param p3    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->a:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/um0;->c:Landroid/content/pm/PackageInfo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/um0;->d:Lcom/google/android/gms/internal/ads/pa;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/vm0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->a:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/xm0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/xm0;-><init>(Lcom/google/android/gms/internal/ads/um0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "native_version"

    .line 2
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "native_templates"

    .line 3
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->h:Ljava/util/ArrayList;

    const-string v1, "native_custom_templates"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/aw1;->R1:Lcom/google/android/gms/internal/ads/pv1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "landscape"

    const-string v2, "portrait"

    const-string v3, "any"

    const/4 v4, 0x2

    const-string v5, "unknown"

    const/4 v6, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaai;->e:I

    if-le p1, v0, :cond_4

    const-string p1, "enable_native_media_orientation"

    .line 8
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    .line 10
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaai;->l:I

    if-eq p1, v6, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    move-object p1, v5

    goto :goto_0

    :cond_0
    const-string p1, "square"

    goto :goto_0

    :cond_1
    move-object p1, v2

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_0

    :cond_3
    move-object p1, v3

    .line 11
    :goto_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "native_media_orientation"

    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    .line 14
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaai;->g:I

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v4, :cond_7

    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_1

    :cond_6
    move-object v1, v3

    .line 15
    :cond_7
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "native_image_orientation"

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaai;->h:Z

    const-string v0, "native_multiple_images"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaai;->k:Z

    const-string v0, "use_custom_mute"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->c:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_2

    .line 20
    :cond_9
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->d:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->k()I

    move-result v0

    if-le p1, v0, :cond_a

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->d:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pa;->c()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->d:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pa;->a(I)V

    .line 24
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->d:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pa;->e()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    .line 27
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "native_advanced_settings"

    .line 28
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget p1, p1, Lcom/google/android/gms/internal/ads/ws0;->k:I

    if-le p1, v6, :cond_d

    const-string v0, "max_num_ads"

    .line 30
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->c:Lcom/google/android/gms/internal/ads/zzafj;

    if-eqz p1, :cond_10

    .line 32
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzafj;->e:I

    const-string v0, "l"

    if-eq p1, v6, :cond_f

    if-eq p1, v4, :cond_e

    const/16 v1, 0x34

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Instream ad video aspect ratio "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string v0, "p"

    :cond_f
    :goto_4
    const-string p1, "ia_var"

    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "instr"

    .line 35
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ws0;->a()Lcom/google/android/gms/internal/ads/zzack;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string p1, "has_delayed_banner_listener"

    .line 37
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/vm0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/wm0;->a:Lcom/google/android/gms/internal/ads/vm0;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zm0;->a:Lcom/google/android/gms/internal/ads/vm0;

    return-object v0

    .line 5
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/ym0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/ym0;-><init>(Lcom/google/android/gms/internal/ads/um0;Ljava/util/ArrayList;)V

    return-object v1
.end method
