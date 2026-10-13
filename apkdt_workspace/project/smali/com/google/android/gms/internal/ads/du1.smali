.class final Lcom/google/android/gms/internal/ads/du1;
.super Lcom/google/android/gms/internal/ads/ku1;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ku1<",
        "Lcom/google/android/gms/internal/ads/zzve;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/zztw;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/zzajd;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/eu1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/du1;->f:Lcom/google/android/gms/internal/ads/eu1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/du1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/du1;->c:Lcom/google/android/gms/internal/ads/zztw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/du1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/du1;->e:Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ku1;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/du1;->b:Landroid/content/Context;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/eu1;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxj;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/zzvn;)Ljava/lang/Object;
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/du1;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/du1;->c:Lcom/google/android/gms/internal/ads/zztw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/du1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/du1;->e:Lcom/google/android/gms/internal/ads/zzajd;

    const v6, 0xe975a0

    move-object v1, p1

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/du1;->f:Lcom/google/android/gms/internal/ads/eu1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eu1;->a(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/ut1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/du1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/du1;->c:Lcom/google/android/gms/internal/ads/zztw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/du1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/du1;->e:Lcom/google/android/gms/internal/ads/zzajd;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ut1;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    return-object v0
.end method
