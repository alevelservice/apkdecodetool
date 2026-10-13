.class final Lcom/google/android/gms/internal/ads/sl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kz;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/hw;

.field private b:Lcom/google/android/gms/internal/ads/ws;

.field private c:Lcom/google/android/gms/internal/ads/ai0;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/bl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sl;->d:Lcom/google/android/gms/internal/ads/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bl;Lcom/google/android/gms/internal/ads/el;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sl;-><init>(Lcom/google/android/gms/internal/ads/bl;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/kz;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ws;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sl;->b:Lcom/google/android/gms/internal/ads/ws;

    return-object p0
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/sl;->b()Lcom/google/android/gms/internal/ads/lz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/ai0;)Lcom/google/android/gms/internal/ads/kz;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ai0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sl;->c:Lcom/google/android/gms/internal/ads/ai0;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/lz;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sl;->a:Lcom/google/android/gms/internal/ads/hw;

    const-class v1, Lcom/google/android/gms/internal/ads/hw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sl;->b:Lcom/google/android/gms/internal/ads/ws;

    const-class v1, Lcom/google/android/gms/internal/ads/ws;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sl;->c:Lcom/google/android/gms/internal/ads/ai0;

    const-class v1, Lcom/google/android/gms/internal/ads/ai0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/rl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sl;->d:Lcom/google/android/gms/internal/ads/bl;

    new-instance v4, Lcom/google/android/gms/internal/ads/tr;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/tr;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/it0;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/it0;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/ns;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/ns;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/s80;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/s80;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/sl;->a:Lcom/google/android/gms/internal/ads/hw;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/sl;->b:Lcom/google/android/gms/internal/ads/ws;

    new-instance v10, Lcom/google/android/gms/internal/ads/rt0;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/rt0;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/sl;->c:Lcom/google/android/gms/internal/ads/ai0;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/rl;-><init>(Lcom/google/android/gms/internal/ads/bl;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/it0;Lcom/google/android/gms/internal/ads/ns;Lcom/google/android/gms/internal/ads/s80;Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/ws;Lcom/google/android/gms/internal/ads/rt0;Lcom/google/android/gms/internal/ads/ai0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/br0;Lcom/google/android/gms/internal/ads/el;)V

    return-object v0
.end method

.method public final synthetic d(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/kz;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/hw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sl;->a:Lcom/google/android/gms/internal/ads/hw;

    return-object p0
.end method
