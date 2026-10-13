.class final Lcom/google/android/gms/internal/ads/bm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nj0;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/ws;

.field private b:Lcom/google/android/gms/internal/ads/rj0;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/internal/ads/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bl;Lcom/google/android/gms/internal/ads/el;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bm;-><init>(Lcom/google/android/gms/internal/ads/bl;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/lj0;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bm;->a:Lcom/google/android/gms/internal/ads/ws;

    const-class v1, Lcom/google/android/gms/internal/ads/ws;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bm;->b:Lcom/google/android/gms/internal/ads/rj0;

    const-class v1, Lcom/google/android/gms/internal/ads/rj0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/internal/ads/bl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bm;->b:Lcom/google/android/gms/internal/ads/rj0;

    new-instance v5, Lcom/google/android/gms/internal/ads/tr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/tr;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/s80;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/s80;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bm;->a:Lcom/google/android/gms/internal/ads/ws;

    new-instance v8, Lcom/google/android/gms/internal/ads/rt0;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/rt0;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/am;-><init>(Lcom/google/android/gms/internal/ads/bl;Lcom/google/android/gms/internal/ads/rj0;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/s80;Lcom/google/android/gms/internal/ads/ws;Lcom/google/android/gms/internal/ads/rt0;Lcom/google/android/gms/internal/ads/br0;Lcom/google/android/gms/internal/ads/el;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/nj0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/rj0;)Lcom/google/android/gms/internal/ads/nj0;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/rj0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bm;->b:Lcom/google/android/gms/internal/ads/rj0;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/nj0;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ws;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bm;->a:Lcom/google/android/gms/internal/ads/ws;

    return-object p0
.end method
