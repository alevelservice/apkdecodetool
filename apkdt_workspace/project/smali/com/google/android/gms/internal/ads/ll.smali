.class final Lcom/google/android/gms/internal/ads/ll;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tp;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/hw;

.field private b:Lcom/google/android/gms/internal/ads/ws;

.field private c:Lcom/google/android/gms/internal/ads/ai0;

.field private d:Lcom/google/android/gms/internal/ads/lq;

.field private e:Lcom/google/android/gms/internal/ads/qo;

.field private f:Lcom/google/android/gms/internal/ads/b00;

.field private final synthetic g:Lcom/google/android/gms/internal/ads/bl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->g:Lcom/google/android/gms/internal/ads/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bl;Lcom/google/android/gms/internal/ads/el;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ll;-><init>(Lcom/google/android/gms/internal/ads/bl;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/ai0;)Lcom/google/android/gms/internal/ads/tp;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ai0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/ai0;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/b00;)Lcom/google/android/gms/internal/ads/tp;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/b00;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->f:Lcom/google/android/gms/internal/ads/b00;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/lq;)Lcom/google/android/gms/internal/ads/tp;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/lq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->d:Lcom/google/android/gms/internal/ads/lq;

    return-object p0
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ll;->e()Lcom/google/android/gms/internal/ads/qp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/tp;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/qo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->e:Lcom/google/android/gms/internal/ads/qo;

    return-object p0
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/tp;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ws;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/ws;

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/qp;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ll;->a:Lcom/google/android/gms/internal/ads/hw;

    const-class v2, Lcom/google/android/gms/internal/ads/hw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/ws;

    const-class v2, Lcom/google/android/gms/internal/ads/ws;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/ai0;

    const-class v2, Lcom/google/android/gms/internal/ads/ai0;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ll;->d:Lcom/google/android/gms/internal/ads/lq;

    const-class v2, Lcom/google/android/gms/internal/ads/lq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ll;->e:Lcom/google/android/gms/internal/ads/qo;

    const-class v2, Lcom/google/android/gms/internal/ads/qo;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ll;->f:Lcom/google/android/gms/internal/ads/b00;

    const-class v2, Lcom/google/android/gms/internal/ads/b00;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/ol;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ll;->g:Lcom/google/android/gms/internal/ads/bl;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ll;->e:Lcom/google/android/gms/internal/ads/qo;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ll;->f:Lcom/google/android/gms/internal/ads/b00;

    new-instance v7, Lcom/google/android/gms/internal/ads/tr;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/tr;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/it0;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/it0;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/ns;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/ns;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/s80;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/s80;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/ll;->a:Lcom/google/android/gms/internal/ads/hw;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/ws;

    new-instance v13, Lcom/google/android/gms/internal/ads/rt0;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/rt0;-><init>()V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/ai0;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/ll;->d:Lcom/google/android/gms/internal/ads/lq;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/ol;-><init>(Lcom/google/android/gms/internal/ads/bl;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/b00;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/it0;Lcom/google/android/gms/internal/ads/ns;Lcom/google/android/gms/internal/ads/s80;Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/ws;Lcom/google/android/gms/internal/ads/rt0;Lcom/google/android/gms/internal/ads/ai0;Lcom/google/android/gms/internal/ads/lq;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/br0;Lcom/google/android/gms/internal/ads/el;)V

    return-object v1
.end method

.method public final synthetic e(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/tp;
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/hw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Lcom/google/android/gms/internal/ads/hw;

    return-object p0
.end method
