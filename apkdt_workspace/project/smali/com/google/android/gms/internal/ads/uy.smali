.class public final Lcom/google/android/gms/internal/ads/uy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/ox<",
        "Lcom/google/android/gms/internal/ads/qu;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ws0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/qy;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qy;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ws0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uy;->a:Lcom/google/android/gms/internal/ads/af1;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uy;->b:Lcom/google/android/gms/internal/ads/af1;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uy;->c:Lcom/google/android/gms/internal/ads/af1;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/uy;->d:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/qy;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)Lcom/google/android/gms/internal/ads/uy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qy;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ws0;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/uy;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/uy;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/uy;-><init>(Lcom/google/android/gms/internal/ads/qy;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy;->a:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uy;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uy;->c:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ns0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uy;->d:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ws0;

    .line 2
    new-instance v4, Lcom/google/android/gms/internal/ads/ox;

    new-instance v5, Lcom/google/android/gms/internal/ads/ty;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ty;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/ws0;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 4
    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/internal/ads/ox;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/ox;

    return-object v4
.end method
