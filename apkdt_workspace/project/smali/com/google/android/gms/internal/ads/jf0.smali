.class public final Lcom/google/android/gms/internal/ads/jf0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dd0<",
        "Lcom/google/android/gms/internal/ads/d10;",
        "Lcom/google/android/gms/internal/ads/zzaji;",
        "Lcom/google/android/gms/internal/ads/zzcgu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/f00;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/f00;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jf0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jf0;->b:Lcom/google/android/gms/internal/ads/f00;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jf0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/vs0;I)Z
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ws0;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lcom/google/android/gms/internal/ads/bd0<",
            "Lcom/google/android/gms/internal/ads/zzaji;",
            "Lcom/google/android/gms/internal/ads/zzcgu;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jf0;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/nc;->a(Lcom/google/android/gms/internal/ads/sc;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzajj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/ws0;->g:Ljava/util/ArrayList;

    .line 5
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajj;Lcom/google/android/gms/internal/ads/zzaai;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaji;->zzrl()Lcom/google/android/gms/internal/ads/zzajq;

    move-result-object v0

    .line 2
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaji;->zzrm()Lcom/google/android/gms/internal/ads/zzajr;

    move-result-object v1

    .line 3
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaji;->zzrr()Lcom/google/android/gms/internal/ads/zzajw;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/jf0;->a(Lcom/google/android/gms/internal/ads/vs0;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/l10;->a(Lcom/google/android/gms/internal/ads/zzajw;)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v4

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/jf0;->a(Lcom/google/android/gms/internal/ads/vs0;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/internal/ads/zzajq;)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v5, 0x2

    .line 8
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/jf0;->a(Lcom/google/android/gms/internal/ads/vs0;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->a(Lcom/google/android/gms/internal/ads/zzajq;)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/jf0;->a(Lcom/google/android/gms/internal/ads/vs0;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/internal/ads/zzajr;)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 12
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/jf0;->a(Lcom/google/android/gms/internal/ads/vs0;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/l10;->a(Lcom/google/android/gms/internal/ads/zzajr;)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v4

    .line 14
    :goto_0
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ws0;->g:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/l10;->o()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jf0;->b:Lcom/google/android/gms/internal/ads/f00;

    new-instance v5, Lcom/google/android/gms/internal/ads/lr;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bd0;->a:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/y10;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/y10;-><init>(Lcom/google/android/gms/internal/ads/l10;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/a30;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/a30;-><init>(Lcom/google/android/gms/internal/ads/zzajr;Lcom/google/android/gms/internal/ads/zzajq;Lcom/google/android/gms/internal/ads/zzajw;)V

    .line 18
    invoke-virtual {v3, v5, p1, p2}, Lcom/google/android/gms/internal/ads/f00;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/y10;Lcom/google/android/gms/internal/ads/a30;)Lcom/google/android/gms/internal/ads/r10;

    move-result-object p1

    .line 19
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->f()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcgu;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq;->a()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p2

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/dn;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/bd0;->b:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/dn;-><init>(Lcom/google/android/gms/internal/ads/zzaji;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/jf0;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/ads/cw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p10;->g()Lcom/google/android/gms/internal/ads/d10;

    move-result-object p1

    return-object p1

    .line 23
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/bg0;

    const-string p2, "No corresponding native ad listener"

    invoke-direct {p1, p2, v3}, Lcom/google/android/gms/internal/ads/bg0;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 24
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/bg0;

    const-string p2, "No native ad mappers"

    invoke-direct {p1, p2, v3}, Lcom/google/android/gms/internal/ads/bg0;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
