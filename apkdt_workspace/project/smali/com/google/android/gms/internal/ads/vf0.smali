.class public final Lcom/google/android/gms/internal/ads/vf0;
.super Lcom/google/android/gms/internal/ads/uf0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/uf0<",
        "Lcom/google/android/gms/internal/ads/py;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mk;

.field private final b:Lcom/google/android/gms/internal/ads/ws$a;

.field private final c:Lcom/google/android/gms/internal/ads/ai0;

.field private final d:Lcom/google/android/gms/internal/ads/hw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk;Lcom/google/android/gms/internal/ads/ws$a;Lcom/google/android/gms/internal/ads/ai0;Lcom/google/android/gms/internal/ads/hw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uf0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vf0;->a:Lcom/google/android/gms/internal/ads/mk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vf0;->b:Lcom/google/android/gms/internal/ads/ws$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vf0;->c:Lcom/google/android/gms/internal/ads/ai0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vf0;->d:Lcom/google/android/gms/internal/ads/hw;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/ws0;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ws0;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/py;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf0;->a:Lcom/google/android/gms/internal/ads/mk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->j()Lcom/google/android/gms/internal/ads/kz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vf0;->b:Lcom/google/android/gms/internal/ads/ws$a;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/ws$a;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws$a;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/kz;->a(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/kz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vf0;->d:Lcom/google/android/gms/internal/ads/hw;

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/kz;->d(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/kz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vf0;->c:Lcom/google/android/gms/internal/ads/ai0;

    .line 8
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/kz;->b(Lcom/google/android/gms/internal/ads/ai0;)Lcom/google/android/gms/internal/ads/kz;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kz;->b()Lcom/google/android/gms/internal/ads/lz;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lz;->a()Lcom/google/android/gms/internal/ads/rr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rr;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
