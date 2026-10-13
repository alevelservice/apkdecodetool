.class public final Lcom/google/android/gms/internal/ads/l00;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/tq<",
        "Lcom/google/android/gms/internal/ads/uo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ws$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/hw;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/b00;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/kv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ws$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/hw;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/b00;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/kv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l00;->a:Lcom/google/android/gms/internal/ads/af1;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l00;->b:Lcom/google/android/gms/internal/ads/af1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/l00;->c:Lcom/google/android/gms/internal/ads/af1;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/l00;->d:Lcom/google/android/gms/internal/ads/af1;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/l00;->e:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l00;->a:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l00;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ws$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l00;->c:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/hw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/l00;->d:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/b00;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/l00;->e:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/kv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->h()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws$a;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tp;->b(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/tp;

    .line 4
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/tp;->e(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/tp;

    .line 5
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/b00;)Lcom/google/android/gms/internal/ads/tp;

    new-instance v1, Lcom/google/android/gms/internal/ads/ai0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ai0;-><init>(Lcom/google/android/gms/internal/ads/zzzn;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/ai0;)Lcom/google/android/gms/internal/ads/tp;

    new-instance v1, Lcom/google/android/gms/internal/ads/lq;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/lq;-><init>(Lcom/google/android/gms/internal/ads/kv;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tp;->a(Lcom/google/android/gms/internal/ads/lq;)Lcom/google/android/gms/internal/ads/tp;

    new-instance v1, Lcom/google/android/gms/internal/ads/qo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/qo;-><init>(Landroid/view/ViewGroup;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tp;->b(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/tp;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->e()Lcom/google/android/gms/internal/ads/qp;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->c()Lcom/google/android/gms/internal/ads/tq;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/tq;

    return-object v0
.end method
