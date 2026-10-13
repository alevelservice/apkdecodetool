.class public final Lcom/google/android/gms/internal/ads/gp;
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
.field private final a:Lcom/google/android/gms/internal/ads/yo;

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ws0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yo;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yo;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gp;->a:Lcom/google/android/gms/internal/ads/yo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gp;->b:Lcom/google/android/gms/internal/ads/af1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gp;->c:Lcom/google/android/gms/internal/ads/af1;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gp;->d:Lcom/google/android/gms/internal/ads/af1;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gp;->e:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/yo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yo;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzawv;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            "Lcom/google/android/gms/internal/ads/ws0;",
            ")",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/qu;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/ox;

    new-instance v0, Lcom/google/android/gms/internal/ads/bp;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/ws0;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ox;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/ox;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gp;->a:Lcom/google/android/gms/internal/ads/yo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gp;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gp;->c:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gp;->d:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ns0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gp;->e:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/ws0;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/gp;->a(Lcom/google/android/gms/internal/ads/yo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ox;

    move-result-object v0

    return-object v0
.end method
