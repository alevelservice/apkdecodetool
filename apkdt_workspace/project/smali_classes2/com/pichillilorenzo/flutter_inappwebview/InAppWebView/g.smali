.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;
.super Ljava/lang/Object;
.source "InAppWebViewOptions.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview/l<",
        "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Boolean;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public D:Ljava/lang/Boolean;

.field public E:Ljava/lang/Boolean;

.field public F:Ljava/lang/Boolean;

.field public G:Ljava/lang/Boolean;

.field public H:Ljava/lang/Integer;

.field public I:Ljava/lang/Boolean;

.field public J:Ljava/lang/Boolean;

.field public K:Ljava/lang/Boolean;

.field public L:Ljava/lang/Boolean;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/Boolean;

.field public O:Ljava/lang/Boolean;

.field public P:Ljava/lang/Integer;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/Integer;

.field public S:Ljava/lang/Integer;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/Integer;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/Integer;

.field public Y:Ljava/lang/Boolean;

.field public Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public a:Ljava/lang/Boolean;

.field public a0:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public b0:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public c0:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;

.field public d0:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public e0:Ljava/lang/Boolean;

.field public f:Ljava/lang/String;

.field public f0:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public g0:Ljava/lang/String;

.field public h:Ljava/lang/Boolean;

.field public h0:Ljava/lang/String;

.field public i:Ljava/lang/Boolean;

.field public i0:Ljava/lang/String;

.field public j:Ljava/lang/Boolean;

.field public j0:Ljava/lang/Boolean;

.field public k:Ljava/lang/Integer;

.field public k0:Ljava/lang/Boolean;

.field public l:Ljava/lang/Boolean;

.field public l0:Ljava/lang/Boolean;

.field public m:Ljava/lang/Boolean;

.field public m0:Ljava/lang/Boolean;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n0:Ljava/lang/String;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public o0:Ljava/lang/Integer;

.field public p:Ljava/lang/Integer;

.field public p0:Ljava/lang/Boolean;

.field public q:Ljava/lang/Boolean;

.field public q0:Ljava/lang/Integer;

.field public r:Ljava/lang/Boolean;

.field public r0:Ljava/lang/Integer;

.field public s:Ljava/lang/Boolean;

.field public s0:Ljava/lang/Integer;

.field public t:Ljava/lang/Boolean;

.field public t0:Ljava/lang/Boolean;

.field public u:Ljava/lang/Boolean;

.field public u0:Ljava/lang/Integer;

.field public v:Ljava/lang/Boolean;

.field public v0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/lang/Boolean;

.field public w0:Ljava/lang/Boolean;

.field public x:Ljava/lang/Boolean;

.field public x0:Ljava/lang/Boolean;

.field public y:Ljava/lang/Boolean;

.field public y0:Ljava/lang/Boolean;

.field public z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d:Ljava/lang/Boolean;

    const-string v2, ""

    .line 6
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    .line 7
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    const/4 v2, 0x1

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g:Ljava/lang/Boolean;

    .line 9
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i:Ljava/lang/Boolean;

    .line 11
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j:Ljava/lang/Boolean;

    const/16 v4, 0x8

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k:Ljava/lang/Integer;

    .line 13
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l:Ljava/lang/Boolean;

    .line 14
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m:Ljava/lang/Boolean;

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n:Ljava/util/List;

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o:Ljava/util/List;

    .line 17
    sget-object v5, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;->RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;

    invoke-virtual {v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;->toValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q:Ljava/lang/Boolean;

    .line 19
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r:Ljava/lang/Boolean;

    .line 20
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s:Ljava/lang/Boolean;

    .line 21
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t:Ljava/lang/Boolean;

    .line 22
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u:Ljava/lang/Boolean;

    .line 23
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v:Ljava/lang/Boolean;

    .line 24
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w:Ljava/lang/Boolean;

    .line 25
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->x:Ljava/lang/Boolean;

    .line 26
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y:Ljava/lang/Boolean;

    const/16 v5, 0x64

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->z:Ljava/lang/Integer;

    .line 28
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->A:Ljava/lang/Boolean;

    .line 29
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->B:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->C:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->D:Ljava/lang/Boolean;

    .line 32
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->E:Ljava/lang/Boolean;

    .line 33
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->F:Ljava/lang/Boolean;

    .line 34
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->G:Ljava/lang/Boolean;

    .line 35
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->I:Ljava/lang/Boolean;

    .line 36
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->J:Ljava/lang/Boolean;

    .line 37
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->K:Ljava/lang/Boolean;

    .line 38
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->L:Ljava/lang/Boolean;

    .line 39
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->N:Ljava/lang/Boolean;

    .line 40
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->O:Ljava/lang/Boolean;

    const/4 v5, -0x1

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->P:Ljava/lang/Integer;

    const-string v5, "cursive"

    .line 42
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Q:Ljava/lang/String;

    const/16 v5, 0x10

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->R:Ljava/lang/Integer;

    .line 44
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->S:Ljava/lang/Integer;

    const-string v5, "UTF-8"

    .line 45
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->T:Ljava/lang/String;

    const-string v5, "fantasy"

    .line 46
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->V:Ljava/lang/String;

    const-string v5, "monospace"

    .line 47
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->W:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->X:Ljava/lang/Integer;

    .line 49
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Y:Ljava/lang/Boolean;

    .line 50
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a0:Ljava/lang/Boolean;

    .line 51
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b0:Ljava/lang/Boolean;

    .line 52
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c0:Ljava/lang/Integer;

    .line 53
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d0:Ljava/lang/Integer;

    .line 54
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e0:Ljava/lang/Boolean;

    .line 55
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f0:Ljava/lang/Boolean;

    const-string v4, "sans-serif"

    .line 56
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g0:Ljava/lang/String;

    .line 57
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h0:Ljava/lang/String;

    .line 58
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i0:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j0:Ljava/lang/Boolean;

    .line 60
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k0:Ljava/lang/Boolean;

    .line 61
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l0:Ljava/lang/Boolean;

    .line 62
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m0:Ljava/lang/Boolean;

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o0:Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 64
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p0:Ljava/lang/Boolean;

    .line 65
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q0:Ljava/lang/Integer;

    .line 66
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r0:Ljava/lang/Integer;

    .line 67
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    .line 68
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t0:Ljava/lang/Boolean;

    .line 69
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    .line 71
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w0:Ljava/lang/Boolean;

    .line 72
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->x0:Ljava/lang/Boolean;

    .line 73
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y0:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_8

    const/4 v0, -0x1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x76664f19    # -3.699977E-33f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x3ee2bbd9

    if-eq v1, v2, :cond_1

    const v2, 0x5d17953f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "TEXT_AUTOSIZING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "NARROW_COLUMNS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "NORMAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_6

    goto :goto_1

    .line 220
    :cond_4
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 221
    :cond_5
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 222
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_7

    .line 223
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_1

    .line 224
    :cond_7
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    :cond_8
    :goto_1
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eqz v0, :cond_3

    .line 2
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g$a;->a:[I

    invoke-virtual {v0}, Landroid/webkit/WebSettings$LayoutAlgorithm;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "NORMAL"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NARROW_COLUMNS"

    return-object v0

    .line 3
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const-string v0, "TEXT_AUTOSIZING"

    return-object v0

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "clearSessionCache"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "verticalScrollBarEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "minimumLogicalFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "thirdPartyCookiesEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "defaultFixedFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "supportMultipleWindows"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "contentBlockers"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "disableDefaultErrorPage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x4c

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "forceDark"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "serifFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "safeBrowsingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "loadWithOverviewMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "geolocationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "displayZoomControls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "standardFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "appCachePath"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "allowFileAccess"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "scrollBarFadeDuration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "mixedContentMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "applicationNameForUserAgent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "saveFormData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "cacheEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "useOnLoadResource"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "useOnRenderProcessGone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x4b

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "userAgent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "blockNetworkLoads"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "blockNetworkImage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "mediaPlaybackRequiresUserGesture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "cursiveFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "useOnDownloadStart"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "regexToCancelSubFramesLoading"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "sansSerifFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "rendererPriorityPolicy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "fantasyFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "offscreenPreRaster"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "javaScriptCanOpenWindowsAutomatically"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "disableVerticalScroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "verticalScrollbarPosition"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "initialScale"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "scrollBarStyle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "horizontalScrollBarEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "cacheMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "useShouldInterceptRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "databaseEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "allowUniversalAccessFromFileURLs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "transparentBackground"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "clearCache"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "layoutAlgorithm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "minimumFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "textZoom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "useShouldInterceptAjaxRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "debuggingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "disableContextMenu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "domStorageEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "overScrollMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "incognito"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "disabledActionModeMenuItems"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "resourceCustomSchemes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "loadsImagesAutomatically"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "useShouldInterceptFetchRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "networkAvailable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "hardwareAcceleration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "javaScriptEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "builtInZoomControls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_40
    const-string v3, "fixedFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_41
    const-string v3, "allowContentAccess"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_42
    const-string v3, "preferredContentMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_43
    const-string v3, "useShouldOverrideUrlLoading"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_44
    const-string v3, "needInitialFocus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x38

    goto :goto_1

    :sswitch_45
    const-string v3, "defaultTextEncodingName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_46
    const-string v3, "scrollbarFadingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x47

    goto :goto_1

    :sswitch_47
    const-string v3, "supportZoom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1c

    goto :goto_1

    :sswitch_48
    const-string v3, "defaultFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2c

    goto :goto_1

    :sswitch_49
    const-string v3, "allowFileAccessFromFileURLs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x24

    goto :goto_1

    :sswitch_4a
    const-string v3, "useWideViewPort"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1f

    goto :goto_1

    :sswitch_4b
    const-string v3, "scrollBarDefaultDelayBeforeFade"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x46

    goto :goto_1

    :sswitch_4c
    const-string v3, "disableHorizontalScroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x16

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 5
    :pswitch_0
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6
    :pswitch_1
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->x0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 7
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8
    :pswitch_3
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    goto/16 :goto_0

    .line 9
    :pswitch_4
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 10
    :pswitch_5
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11
    :pswitch_6
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 12
    :pswitch_7
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r0:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 13
    :pswitch_8
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q0:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 14
    :pswitch_9
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 15
    :pswitch_a
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o0:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 16
    :pswitch_b
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n0:Ljava/lang/String;

    goto/16 :goto_0

    .line 17
    :pswitch_c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 18
    :pswitch_d
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 19
    :pswitch_e
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 20
    :pswitch_f
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 21
    :pswitch_10
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i0:Ljava/lang/String;

    goto/16 :goto_0

    .line 22
    :pswitch_11
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h0:Ljava/lang/String;

    goto/16 :goto_0

    .line 23
    :pswitch_12
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g0:Ljava/lang/String;

    goto/16 :goto_0

    .line 24
    :pswitch_13
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 25
    :pswitch_14
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 26
    :pswitch_15
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d0:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 27
    :pswitch_16
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c0:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 28
    :pswitch_17
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 29
    :pswitch_18
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a0:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 30
    :pswitch_19
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31
    :pswitch_1a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Y:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 32
    :pswitch_1b
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->X:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 33
    :pswitch_1c
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->W:Ljava/lang/String;

    goto/16 :goto_0

    .line 34
    :pswitch_1d
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->V:Ljava/lang/String;

    goto/16 :goto_0

    .line 35
    :pswitch_1e
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->U:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 36
    :pswitch_1f
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->T:Ljava/lang/String;

    goto/16 :goto_0

    .line 37
    :pswitch_20
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->S:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 38
    :pswitch_21
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->R:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 39
    :pswitch_22
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Q:Ljava/lang/String;

    goto/16 :goto_0

    .line 40
    :pswitch_23
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->P:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 41
    :pswitch_24
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->O:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 42
    :pswitch_25
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->N:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 43
    :pswitch_26
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->M:Ljava/lang/String;

    goto/16 :goto_0

    .line 44
    :pswitch_27
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->L:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 45
    :pswitch_28
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->K:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 46
    :pswitch_29
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->J:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 47
    :pswitch_2a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->I:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 48
    :pswitch_2b
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->H:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 49
    :pswitch_2c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->G:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 50
    :pswitch_2d
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->F:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 51
    :pswitch_2e
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->E:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 52
    :pswitch_2f
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->D:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 53
    :pswitch_30
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 54
    :pswitch_31
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->C:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 55
    :pswitch_32
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->B:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 56
    :pswitch_33
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->A:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 57
    :pswitch_34
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->z:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 58
    :pswitch_35
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->x:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 59
    :pswitch_36
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 60
    :pswitch_37
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 61
    :pswitch_38
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 62
    :pswitch_39
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 63
    :pswitch_3a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 64
    :pswitch_3b
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 65
    :pswitch_3c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 66
    :pswitch_3d
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 67
    :pswitch_3e
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o:Ljava/util/List;

    goto/16 :goto_0

    .line 68
    :pswitch_3f
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n:Ljava/util/List;

    goto/16 :goto_0

    .line 69
    :pswitch_40
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 70
    :pswitch_41
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 71
    :pswitch_42
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 72
    :pswitch_43
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 73
    :pswitch_44
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 74
    :pswitch_45
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 75
    :pswitch_46
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 76
    :pswitch_47
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :pswitch_48
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 78
    :pswitch_49
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 79
    :pswitch_4a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 80
    :pswitch_4b
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 81
    :pswitch_4c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e28b4e7 -> :sswitch_4c
        -0x7cebb65d -> :sswitch_4b
        -0x7868fc20 -> :sswitch_4a
        -0x781574ed -> :sswitch_49
        -0x731cf5af -> :sswitch_48
        -0x6e5567be -> :sswitch_47
        -0x6dffcbbe -> :sswitch_46
        -0x6d510f54 -> :sswitch_45
        -0x68125c56 -> :sswitch_44
        -0x660c5e8d -> :sswitch_43
        -0x63c59185 -> :sswitch_42
        -0x62cc3d8c -> :sswitch_41
        -0x60f260d9 -> :sswitch_40
        -0x60448474 -> :sswitch_3f
        -0x5fd28b0c -> :sswitch_3e
        -0x5e1d0d78 -> :sswitch_3d
        -0x5e161bc5 -> :sswitch_3c
        -0x5dd881a3 -> :sswitch_3b
        -0x58404582 -> :sswitch_3a
        -0x56c312b1 -> :sswitch_39
        -0x560c6f74 -> :sswitch_38
        -0x54db4b54 -> :sswitch_37
        -0x4ec079fc -> :sswitch_36
        -0x4458d9d8 -> :sswitch_35
        -0x44248c5a -> :sswitch_34
        -0x3fc5838d -> :sswitch_33
        -0x3de98899 -> :sswitch_32
        -0x3bcf8160 -> :sswitch_31
        -0x2fb958e2 -> :sswitch_30
        -0x2dc1379b -> :sswitch_2f
        -0x2d410ecb -> :sswitch_2e
        -0x2c486fe0 -> :sswitch_2d
        -0x2b64a590 -> :sswitch_2c
        -0x2a557eba -> :sswitch_2b
        -0x2a207e59 -> :sswitch_2a
        -0x210233bb -> :sswitch_29
        -0x1a6e1561 -> :sswitch_28
        -0x19f88cb5 -> :sswitch_27
        -0x1919539a -> :sswitch_26
        -0x13288f67 -> :sswitch_25
        -0xda8fd15 -> :sswitch_24
        -0xd908e93 -> :sswitch_23
        -0xd6bc25b -> :sswitch_22
        -0xce7bfa7 -> :sswitch_21
        -0x96bc467 -> :sswitch_20
        -0x5dfef23 -> :sswitch_1f
        0x370b1b2 -> :sswitch_1e
        0xa665894 -> :sswitch_1d
        0xf5f0838 -> :sswitch_1c
        0x1049b9d1 -> :sswitch_1b
        0x11a538fa -> :sswitch_1a
        0x11d067ec -> :sswitch_19
        0x12900dfa -> :sswitch_18
        0x1714ab12 -> :sswitch_17
        0x17740bfa -> :sswitch_16
        0x17ad5d5f -> :sswitch_15
        0x185dc72b -> :sswitch_14
        0x2337f2cc -> :sswitch_13
        0x2d5b5ec1 -> :sswitch_12
        0x329d5556 -> :sswitch_11
        0x43d84229 -> :sswitch_10
        0x44f071a6 -> :sswitch_f
        0x4d9a0f30 -> :sswitch_e
        0x4eb4a58b -> :sswitch_d
        0x5022225b -> :sswitch_c
        0x5406bfa8 -> :sswitch_b
        0x57e9092d -> :sswitch_a
        0x5938b1f0 -> :sswitch_9
        0x5b0c8101 -> :sswitch_8
        0x5e66be7e -> :sswitch_7
        0x68d96d52 -> :sswitch_6
        0x69c06284 -> :sswitch_5
        0x6ae683c3 -> :sswitch_4
        0x6c08f151 -> :sswitch_3
        0x749fd22b -> :sswitch_2
        0x77ebe1f1 -> :sswitch_1
        0x797e6979 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a:Ljava/lang/Boolean;

    const-string v2, "useShouldOverrideUrlLoading"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b:Ljava/lang/Boolean;

    const-string v2, "useOnLoadResource"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c:Ljava/lang/Boolean;

    const-string v2, "useOnDownloadStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d:Ljava/lang/Boolean;

    const-string v2, "clearCache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    const-string v2, "userAgent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    const-string v2, "applicationNameForUserAgent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g:Ljava/lang/Boolean;

    const-string v2, "javaScriptEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h:Ljava/lang/Boolean;

    const-string v2, "debuggingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i:Ljava/lang/Boolean;

    const-string v2, "javaScriptCanOpenWindowsAutomatically"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j:Ljava/lang/Boolean;

    const-string v2, "mediaPlaybackRequiresUserGesture"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k:Ljava/lang/Integer;

    const-string v2, "minimumFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l:Ljava/lang/Boolean;

    const-string v2, "verticalScrollBarEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m:Ljava/lang/Boolean;

    const-string v2, "horizontalScrollBarEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n:Ljava/util/List;

    const-string v2, "resourceCustomSchemes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o:Ljava/util/List;

    const-string v2, "contentBlockers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p:Ljava/lang/Integer;

    const-string v2, "preferredContentMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q:Ljava/lang/Boolean;

    const-string v2, "useShouldInterceptAjaxRequest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r:Ljava/lang/Boolean;

    const-string v2, "useShouldInterceptFetchRequest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s:Ljava/lang/Boolean;

    const-string v2, "incognito"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t:Ljava/lang/Boolean;

    const-string v2, "cacheEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u:Ljava/lang/Boolean;

    const-string v2, "transparentBackground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v:Ljava/lang/Boolean;

    const-string v2, "disableVerticalScroll"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w:Ljava/lang/Boolean;

    const-string v2, "disableHorizontalScroll"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->x:Ljava/lang/Boolean;

    const-string v2, "disableContextMenu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->z:Ljava/lang/Integer;

    const-string v2, "textZoom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->A:Ljava/lang/Boolean;

    const-string v2, "clearSessionCache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->B:Ljava/lang/Boolean;

    const-string v2, "builtInZoomControls"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->C:Ljava/lang/Boolean;

    const-string v2, "displayZoomControls"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y:Ljava/lang/Boolean;

    const-string v2, "supportZoom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->D:Ljava/lang/Boolean;

    const-string v2, "databaseEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->E:Ljava/lang/Boolean;

    const-string v2, "domStorageEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->F:Ljava/lang/Boolean;

    const-string v2, "useWideViewPort"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->G:Ljava/lang/Boolean;

    const-string v2, "safeBrowsingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->H:Ljava/lang/Integer;

    const-string v2, "mixedContentMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->I:Ljava/lang/Boolean;

    const-string v2, "allowContentAccess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->J:Ljava/lang/Boolean;

    const-string v2, "allowFileAccess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->K:Ljava/lang/Boolean;

    const-string v2, "allowFileAccessFromFileURLs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->L:Ljava/lang/Boolean;

    const-string v2, "allowUniversalAccessFromFileURLs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->M:Ljava/lang/String;

    const-string v2, "appCachePath"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->N:Ljava/lang/Boolean;

    const-string v2, "blockNetworkImage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->O:Ljava/lang/Boolean;

    const-string v2, "blockNetworkLoads"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->P:Ljava/lang/Integer;

    const-string v2, "cacheMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Q:Ljava/lang/String;

    const-string v2, "cursiveFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->R:Ljava/lang/Integer;

    const-string v2, "defaultFixedFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->S:Ljava/lang/Integer;

    const-string v2, "defaultFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->T:Ljava/lang/String;

    const-string v2, "defaultTextEncodingName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->U:Ljava/lang/Integer;

    const-string v2, "disabledActionModeMenuItems"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->V:Ljava/lang/String;

    const-string v2, "fantasyFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->W:Ljava/lang/String;

    const-string v2, "fixedFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->X:Ljava/lang/Integer;

    const-string v2, "forceDark"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Y:Ljava/lang/Boolean;

    const-string v2, "geolocationEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layoutAlgorithm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a0:Ljava/lang/Boolean;

    const-string v2, "loadWithOverviewMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b0:Ljava/lang/Boolean;

    const-string v2, "loadsImagesAutomatically"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c0:Ljava/lang/Integer;

    const-string v2, "minimumLogicalFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d0:Ljava/lang/Integer;

    const-string v2, "initialScale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e0:Ljava/lang/Boolean;

    const-string v2, "needInitialFocus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f0:Ljava/lang/Boolean;

    const-string v2, "offscreenPreRaster"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g0:Ljava/lang/String;

    const-string v2, "sansSerifFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h0:Ljava/lang/String;

    const-string v2, "serifFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i0:Ljava/lang/String;

    const-string v2, "standardFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j0:Ljava/lang/Boolean;

    const-string v2, "saveFormData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k0:Ljava/lang/Boolean;

    const-string v2, "thirdPartyCookiesEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l0:Ljava/lang/Boolean;

    const-string v2, "hardwareAcceleration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m0:Ljava/lang/Boolean;

    const-string v2, "supportMultipleWindows"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n0:Ljava/lang/String;

    const-string v2, "regexToCancelSubFramesLoading"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o0:Ljava/lang/Integer;

    const-string v2, "overScrollMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p0:Ljava/lang/Boolean;

    const-string v2, "networkAvailable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q0:Ljava/lang/Integer;

    const-string v2, "scrollBarStyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r0:Ljava/lang/Integer;

    const-string v2, "verticalScrollbarPosition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    const-string v2, "scrollBarDefaultDelayBeforeFade"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t0:Ljava/lang/Boolean;

    const-string v2, "scrollbarFadingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    const-string v2, "scrollBarFadeDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    const-string v2, "rendererPriorityPolicy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w0:Ljava/lang/Boolean;

    const-string v2, "useShouldInterceptRequest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->x0:Ljava/lang/Boolean;

    const-string v2, "useOnRenderProcessGone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y0:Ljava/lang/Boolean;

    const-string v2, "disableDefaultErrorPage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 161
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userAgent"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "javaScriptEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "javaScriptCanOpenWindowsAutomatically"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "mediaPlaybackRequiresUserGesture"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "minimumFontSize"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p1}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "verticalScrollBarEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "horizontalScrollBarEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "textZoom"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "builtInZoomControls"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "supportZoom"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "displayZoomControls"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "databaseEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "domStorageEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "useWideViewPort"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 177
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSafeBrowsingEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "safeBrowsingEnabled"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    .line 179
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMixedContentMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "mixedContentMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowContentAccess"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowFileAccess"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowFileAccessFromFileURLs"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowUniversalAccessFromFileURLs"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "blockNetworkImage"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "blockNetworkLoads"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "cacheMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cursiveFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "defaultFixedFontSize"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "defaultFontSize"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "defaultTextEncodingName"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_2

    .line 192
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDisabledActionModeMenuItems()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "disabledActionModeMenuItems"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fantasyFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fixedFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_3

    .line 196
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getForceDark()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "forceDark"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_3
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "layoutAlgorithm"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "loadWithOverviewMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "loadsImagesAutomatically"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "minimumLogicalFontSize"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_4

    .line 202
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getOffscreenPreRaster()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "offscreenPreRaster"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_4
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sansSerifFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "serifFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "standardFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "saveFormData"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "supportMultipleWindows"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "overScrollMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollBarStyle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollBarStyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "verticalScrollbarPosition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollBarDefaultDelayBeforeFade"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Landroid/webkit/WebView;->isScrollbarFadingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "scrollbarFadingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollBarFadeDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollBarFadeDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_5

    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 216
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRendererRequestedPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rendererRequestedPriority"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "waivedWhenNotVisible"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rendererPriorityPolicy"

    .line 218
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method
