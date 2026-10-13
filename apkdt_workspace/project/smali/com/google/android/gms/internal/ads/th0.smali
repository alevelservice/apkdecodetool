.class public final Lcom/google/android/gms/internal/ads/th0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ad0<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzzn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/tz0;

.field private final c:Lcom/google/android/gms/internal/ads/zu0;

.field private final d:Lcom/google/android/gms/internal/ads/yh0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yh0<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zu0;Lcom/google/android/gms/internal/ads/tz0;Lcom/google/android/gms/internal/ads/zzzn;Lcom/google/android/gms/internal/ads/yh0;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zu0;",
            "Lcom/google/android/gms/internal/ads/tz0;",
            "Lcom/google/android/gms/internal/ads/zzzn;",
            "Lcom/google/android/gms/internal/ads/yh0<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/th0;->c:Lcom/google/android/gms/internal/ads/zu0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/th0;->b:Lcom/google/android/gms/internal/ads/tz0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/th0;->a:Lcom/google/android/gms/internal/ads/zzzn;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/th0;->d:Lcom/google/android/gms/internal/ads/yh0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/th0;)Lcom/google/android/gms/internal/ads/yh0;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/th0;->d:Lcom/google/android/gms/internal/ads/yh0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 2
    new-instance v7, Lcom/google/android/gms/internal/ads/bi0;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/bi0;-><init>()V

    .line 3
    new-instance v8, Lcom/google/android/gms/internal/ads/vh0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vh0;-><init>(Lcom/google/android/gms/internal/ads/th0;Lcom/google/android/gms/internal/ads/he;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bi0;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/bi0;->a(Lcom/google/android/gms/ads/internal/g;)V

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzzk;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/rs0;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lcom/google/android/gms/internal/ads/zzzk;-><init>(Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/th0;->c:Lcom/google/android/gms/internal/ads/zu0;

    sget-object v0, Lcom/google/android/gms/internal/ads/wu0;->zzgmc:Lcom/google/android/gms/internal/ads/wu0;

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/pu0;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/wh0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/wh0;-><init>(Lcom/google/android/gms/internal/ads/th0;Lcom/google/android/gms/internal/ads/zzzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/th0;->b:Lcom/google/android/gms/internal/ads/tz0;

    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/pu0;->a(Lcom/google/android/gms/internal/ads/iu0;Lcom/google/android/gms/internal/ads/tz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/wu0;->zzgmd:Lcom/google/android/gms/internal/ads/wu0;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ru0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/th0;->a:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/internal/ads/zzzm;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/th0;->a:Lcom/google/android/gms/internal/ads/zzzn;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->p:Lcom/google/android/gms/internal/ads/rs0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
