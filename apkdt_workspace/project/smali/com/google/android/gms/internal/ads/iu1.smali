.class final Lcom/google/android/gms/internal/ads/iu1;
.super Lcom/google/android/gms/internal/ads/ku1;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ku1<",
        "Lcom/google/android/gms/internal/ads/zzux;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/zzajd;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/eu1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iu1;->e:Lcom/google/android/gms/internal/ads/eu1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iu1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/iu1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/iu1;->d:Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ku1;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iu1;->b:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/eu1;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/zzvn;)Ljava/lang/Object;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iu1;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iu1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iu1;->d:Lcom/google/android/gms/internal/ads/zzajd;

    const v3, 0xe975a0

    .line 5
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzux;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iu1;->e:Lcom/google/android/gms/internal/ads/eu1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eu1;->b(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/vt1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iu1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iu1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/iu1;->d:Lcom/google/android/gms/internal/ads/zzajd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vt1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)Lcom/google/android/gms/internal/ads/zzux;

    move-result-object v0

    return-object v0
.end method
