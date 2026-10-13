.class public final Lcom/google/android/gms/internal/ads/tf0;
.super Lcom/google/android/gms/internal/ads/uf0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/uf0<",
        "Lcom/google/android/gms/internal/ads/uo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mk;

.field private final b:Lcom/google/android/gms/internal/ads/ws$a;

.field private final c:Lcom/google/android/gms/internal/ads/ai0;

.field private final d:Lcom/google/android/gms/internal/ads/hw;

.field private final e:Lcom/google/android/gms/internal/ads/b00;

.field private final f:Lcom/google/android/gms/internal/ads/kv;

.field private final g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk;Lcom/google/android/gms/internal/ads/ws$a;Lcom/google/android/gms/internal/ads/ai0;Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/b00;Lcom/google/android/gms/internal/ads/kv;Landroid/view/ViewGroup;)V
    .locals 0
    .param p7    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uf0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tf0;->a:Lcom/google/android/gms/internal/ads/mk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tf0;->b:Lcom/google/android/gms/internal/ads/ws$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tf0;->c:Lcom/google/android/gms/internal/ads/ai0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tf0;->d:Lcom/google/android/gms/internal/ads/hw;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tf0;->e:Lcom/google/android/gms/internal/ads/b00;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/tf0;->f:Lcom/google/android/gms/internal/ads/kv;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/tf0;->g:Landroid/view/ViewGroup;

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
            "Lcom/google/android/gms/internal/ads/uo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tf0;->a:Lcom/google/android/gms/internal/ads/mk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->h()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tf0;->b:Lcom/google/android/gms/internal/ads/ws$a;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/ws$a;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws$a;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->b(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/tp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tf0;->d:Lcom/google/android/gms/internal/ads/hw;

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->e(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/tp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tf0;->c:Lcom/google/android/gms/internal/ads/ai0;

    .line 8
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/ai0;)Lcom/google/android/gms/internal/ads/tp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tf0;->e:Lcom/google/android/gms/internal/ads/b00;

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/b00;)Lcom/google/android/gms/internal/ads/tp;

    new-instance p1, Lcom/google/android/gms/internal/ads/lq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tf0;->f:Lcom/google/android/gms/internal/ads/kv;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/lq;-><init>(Lcom/google/android/gms/internal/ads/kv;)V

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/lq;)Lcom/google/android/gms/internal/ads/tp;

    new-instance p1, Lcom/google/android/gms/internal/ads/qo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tf0;->g:Landroid/view/ViewGroup;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/qo;-><init>(Landroid/view/ViewGroup;)V

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->b(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/tp;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->e()Lcom/google/android/gms/internal/ads/qp;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qp;->a()Lcom/google/android/gms/internal/ads/rr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rr;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
