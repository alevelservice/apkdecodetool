.class public final Lcom/mapbox/mapboxsdk/location/k;
.super Ljava/lang/Object;
.source "LocationComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/k$m;,
        Lcom/mapbox/mapboxsdk/location/k$n;,
        Lcom/mapbox/mapboxsdk/location/k$l;,
        Lcom/mapbox/mapboxsdk/location/k$k;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/c0;",
            ">;"
        }
    .end annotation
.end field

.field private B:J

.field private C:J

.field private D:Lcom/mapbox/mapboxsdk/maps/n$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private E:Lcom/mapbox/mapboxsdk/maps/n$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private F:Lcom/mapbox/mapboxsdk/maps/n$o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private G:Lcom/mapbox/mapboxsdk/maps/n$p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private H:Lcom/mapbox/mapboxsdk/location/b0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private I:Lcom/mapbox/mapboxsdk/location/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private J:Lcom/mapbox/mapboxsdk/location/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field K:Lcom/mapbox/mapboxsdk/location/x;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field L:Lcom/mapbox/mapboxsdk/location/c0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final M:Lcom/mapbox/mapboxsdk/maps/n$h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final a:Lcom/mapbox/mapboxsdk/maps/n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/mapbox/mapboxsdk/maps/a0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/mapbox/mapboxsdk/maps/Style;

.field private d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

.field private e:Lcom/mapbox/mapboxsdk/location/k$m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Le/m/a/a/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Le/m/a/a/d/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Le/m/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private i:Le/m/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/mapbox/mapboxsdk/location/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/mapbox/mapboxsdk/location/o;

.field private l:Lcom/mapbox/mapboxsdk/location/j;

.field private m:Lcom/mapbox/mapboxsdk/location/i;

.field private n:Landroid/location/Location;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/mapbox/mapboxsdk/location/e0;

.field private final w:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/b0;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/z;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$m;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/k$m;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->e:Lcom/mapbox/mapboxsdk/location/k$m;

    .line 29
    new-instance v0, Le/m/a/a/d/h$b;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Le/m/a/a/d/h$b;-><init>(J)V

    .line 30
    invoke-virtual {v0, v1, v2}, Le/m/a/a/d/h$b;->a(J)Le/m/a/a/d/h$b;

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Le/m/a/a/d/h$b;->a(I)Le/m/a/a/d/h$b;

    .line 32
    invoke-virtual {v0}, Le/m/a/a/d/h$b;->a()Le/m/a/a/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->g:Le/m/a/a/d/h;

    .line 33
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$l;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$l;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->h:Le/m/a/a/d/d;

    .line 34
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$n;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$n;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->i:Le/m/a/a/d/d;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$b;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$b;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->D:Lcom/mapbox/mapboxsdk/maps/n$e;

    .line 41
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$c;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$c;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->E:Lcom/mapbox/mapboxsdk/maps/n$c;

    .line 42
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$d;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$d;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->F:Lcom/mapbox/mapboxsdk/maps/n$o;

    .line 43
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$e;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$e;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->G:Lcom/mapbox/mapboxsdk/maps/n$p;

    .line 44
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$f;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$f;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->H:Lcom/mapbox/mapboxsdk/location/b0;

    .line 45
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$g;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$g;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->I:Lcom/mapbox/mapboxsdk/location/w;

    .line 46
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$h;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$h;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->J:Lcom/mapbox/mapboxsdk/location/c;

    .line 47
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$i;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$i;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->K:Lcom/mapbox/mapboxsdk/location/x;

    .line 48
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$j;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$j;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->L:Lcom/mapbox/mapboxsdk/location/c0;

    .line 49
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$a;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$a;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->M:Lcom/mapbox/mapboxsdk/maps/n$h;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    .line 51
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->b:Lcom/mapbox/mapboxsdk/maps/a0;

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/a0;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/n;",
            "Lcom/mapbox/mapboxsdk/maps/a0;",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/n$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$m;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/k$m;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->e:Lcom/mapbox/mapboxsdk/location/k$m;

    .line 3
    new-instance v0, Le/m/a/a/d/h$b;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Le/m/a/a/d/h$b;-><init>(J)V

    .line 4
    invoke-virtual {v0, v1, v2}, Le/m/a/a/d/h$b;->a(J)Le/m/a/a/d/h$b;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Le/m/a/a/d/h$b;->a(I)Le/m/a/a/d/h$b;

    .line 6
    invoke-virtual {v0}, Le/m/a/a/d/h$b;->a()Le/m/a/a/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->g:Le/m/a/a/d/h;

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$l;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$l;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->h:Le/m/a/a/d/d;

    .line 8
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$n;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$n;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->i:Le/m/a/a/d/d;

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$b;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$b;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->D:Lcom/mapbox/mapboxsdk/maps/n$e;

    .line 15
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$c;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$c;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->E:Lcom/mapbox/mapboxsdk/maps/n$c;

    .line 16
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$d;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$d;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->F:Lcom/mapbox/mapboxsdk/maps/n$o;

    .line 17
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$e;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$e;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->G:Lcom/mapbox/mapboxsdk/maps/n$p;

    .line 18
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$f;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$f;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->H:Lcom/mapbox/mapboxsdk/location/b0;

    .line 19
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$g;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$g;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->I:Lcom/mapbox/mapboxsdk/location/w;

    .line 20
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$h;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$h;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->J:Lcom/mapbox/mapboxsdk/location/c;

    .line 21
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$i;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$i;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->K:Lcom/mapbox/mapboxsdk/location/x;

    .line 22
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$j;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$j;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->L:Lcom/mapbox/mapboxsdk/location/c0;

    .line 23
    new-instance v0, Lcom/mapbox/mapboxsdk/location/k$a;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/k$a;-><init>(Lcom/mapbox/mapboxsdk/location/k;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->M:Lcom/mapbox/mapboxsdk/maps/n$h;

    .line 24
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    .line 25
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/k;->b:Lcom/mapbox/mapboxsdk/maps/a0;

    .line 26
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->M:Lcom/mapbox/mapboxsdk/maps/n$h;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/maps/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    return-object p0
.end method

.method private a(F)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/location/i;->a(FLcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->h:Le/m/a/a/d/d;

    invoke-interface {v0, v1}, Le/m/a/a/d/c;->b(Le/m/a/a/d/d;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->e:Lcom/mapbox/mapboxsdk/location/k$m;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/location/k$m;->a(Landroid/content/Context;Z)Le/m/a/a/d/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->a(Le/m/a/a/d/c;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;ZLcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p4

    .line 45
    iget-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p2

    .line 48
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/k;->c:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 49
    iput-object v7, v0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move/from16 v2, p3

    .line 50
    iput-boolean v2, v0, Lcom/mapbox/mapboxsdk/location/k;->q:Z

    .line 51
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v4, v0, Lcom/mapbox/mapboxsdk/location/k;->F:Lcom/mapbox/mapboxsdk/maps/n$o;

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    .line 52
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v4, v0, Lcom/mapbox/mapboxsdk/location/k;->G:Lcom/mapbox/mapboxsdk/maps/n$p;

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    .line 53
    new-instance v12, Lcom/mapbox/mapboxsdk/location/h;

    invoke-direct {v12}, Lcom/mapbox/mapboxsdk/location/h;-><init>()V

    .line 54
    new-instance v13, Lcom/mapbox/mapboxsdk/location/g;

    invoke-direct {v13}, Lcom/mapbox/mapboxsdk/location/g;-><init>()V

    .line 55
    new-instance v14, Lcom/mapbox/mapboxsdk/location/f;

    invoke-direct {v14, v8}, Lcom/mapbox/mapboxsdk/location/f;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v3, Lcom/mapbox/mapboxsdk/location/o;

    iget-object v10, v0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v4, v0, Lcom/mapbox/mapboxsdk/location/k;->L:Lcom/mapbox/mapboxsdk/location/c0;

    move-object v9, v3

    move-object/from16 v11, p2

    move-object/from16 v15, p4

    move-object/from16 v16, v4

    move/from16 v17, p3

    invoke-direct/range {v9 .. v17}, Lcom/mapbox/mapboxsdk/location/o;-><init>(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/h;Lcom/mapbox/mapboxsdk/location/g;Lcom/mapbox/mapboxsdk/location/f;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/c0;Z)V

    iput-object v3, v0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    .line 57
    new-instance v9, Lcom/mapbox/mapboxsdk/location/j;

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v4, v0, Lcom/mapbox/mapboxsdk/location/k;->b:Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object v5, v0, Lcom/mapbox/mapboxsdk/location/k;->K:Lcom/mapbox/mapboxsdk/location/x;

    iget-object v10, v0, Lcom/mapbox/mapboxsdk/location/k;->I:Lcom/mapbox/mapboxsdk/location/w;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    move-object v11, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/location/j;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/location/x;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/w;)V

    iput-object v9, v0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    .line 58
    new-instance v1, Lcom/mapbox/mapboxsdk/location/i;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    .line 59
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v2

    .line 60
    invoke-static {}, Lcom/mapbox/mapboxsdk/location/t;->a()Lcom/mapbox/mapboxsdk/location/t;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/mapbox/mapboxsdk/location/s;->a()Lcom/mapbox/mapboxsdk/location/s;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/location/i;-><init>(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/location/t;Lcom/mapbox/mapboxsdk/location/s;)V

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    .line 62
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    .line 63
    invoke-virtual/range {p4 .. p4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L()F

    move-result v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/location/i;->a(F)V

    const-string v1, "window"

    .line 65
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const-string v2, "sensor"

    .line 66
    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 67
    new-instance v3, Lcom/mapbox/mapboxsdk/location/l;

    invoke-direct {v3, v1, v2}, Lcom/mapbox/mapboxsdk/location/l;-><init>(Landroid/view/WindowManager;Landroid/hardware/SensorManager;)V

    iput-object v3, v0, Lcom/mapbox/mapboxsdk/location/k;->j:Lcom/mapbox/mapboxsdk/location/b;

    .line 68
    :cond_1
    new-instance v1, Lcom/mapbox/mapboxsdk/location/e0;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/k;->H:Lcom/mapbox/mapboxsdk/location/b0;

    invoke-direct {v1, v2, v11}, Lcom/mapbox/mapboxsdk/location/e0;-><init>(Lcom/mapbox/mapboxsdk/location/b0;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/k;->v:Lcom/mapbox/mapboxsdk/location/e0;

    .line 69
    invoke-direct {v0, v11}, Lcom/mapbox/mapboxsdk/location/k;->b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    const/16 v1, 0x12

    .line 70
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/k;->c(I)V

    const/16 v1, 0x8

    .line 71
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/k;->a(I)V

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/location/k;->m()V

    return-void

    .line 73
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Style is invalid, provide the most recently loaded one."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Landroid/location/Location;Ljava/util/List;ZZ)V
    .locals 7
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;ZZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    if-nez v0, :cond_1

    .line 81
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->n:Landroid/location/Location;

    return-void

    .line 82
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 83
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/location/k;->C:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/mapbox/mapboxsdk/location/k;->B:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    return-void

    .line 84
    :cond_2
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/k;->C:J

    .line 85
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->q()V

    if-nez p3, :cond_3

    .line 86
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/location/k;->v:Lcom/mapbox/mapboxsdk/location/e0;

    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/location/e0;->c()V

    .line 87
    :cond_3
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p3

    .line 88
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/k;->a()I

    move-result v0

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_5

    .line 89
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/location/Location;Ljava/util/List;)[Landroid/location/Location;

    move-result-object p2

    .line 91
    invoke-virtual {v1, p2, p3, v0, p4}, Lcom/mapbox/mapboxsdk/location/i;->a([Landroid/location/Location;Lcom/mapbox/mapboxsdk/camera/CameraPosition;ZZ)V

    goto :goto_1

    .line 92
    :cond_5
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {p2, p1, p3, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(Landroid/location/Location;Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V

    .line 93
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/location/Location;Z)V

    .line 94
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->n:Landroid/location/Location;

    return-void
.end method

.method private a(Landroid/location/Location;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->q:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(Lcom/mapbox/mapboxsdk/maps/n;Landroid/location/Location;)F

    move-result p1

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/location/i;->a(FZ)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/location/b;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/location/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->u:Z

    .line 79
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->J:Lcom/mapbox/mapboxsdk/location/c;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/location/b;->a(Lcom/mapbox/mapboxsdk/location/c;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/k;F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/k;Landroid/location/Location;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/k;->b(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/k;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->c(Z)V

    return-void
.end method

.method private a(Landroid/location/Location;Ljava/util/List;)[Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)[",
            "Landroid/location/Location;"
        }
    .end annotation

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Landroid/location/Location;

    .line 96
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 97
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 98
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/location/k;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private b(Landroid/location/Location;Z)V
    .locals 2
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/location/Location;Ljava/util/List;ZZ)V

    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 5
    .param p1    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(IIII)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->j:Lcom/mapbox/mapboxsdk/location/b;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/k;->a(Lcom/mapbox/mapboxsdk/location/b;)V

    return-void

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/k;->s:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/j;->c()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/o;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->j:Lcom/mapbox/mapboxsdk/location/b;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->a(Lcom/mapbox/mapboxsdk/location/b;)V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/k;->u:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/k;->u:Z

    .line 13
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->j:Lcom/mapbox/mapboxsdk/location/b;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->J:Lcom/mapbox/mapboxsdk/location/c;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/location/b;->b(Lcom/mapbox/mapboxsdk/location/c;)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/location/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->t()V

    return-void
.end method

.method private c(Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->o:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iget-wide v5, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {p1, v3, v4}, Lcom/mapbox/mapboxsdk/location/o;->a(D)V

    .line 13
    :cond_2
    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->o:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iget-wide v5, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {p1, v3, v4}, Lcom/mapbox/mapboxsdk/location/o;->b(D)V

    .line 15
    :cond_3
    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->o:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iget-wide v5, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/k;->b()Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/location/Location;Z)V

    .line 17
    :cond_4
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->o:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-void

    .line 18
    :cond_5
    :goto_0
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->o:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 19
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    invoke-virtual {p1, v3, v4}, Lcom/mapbox/mapboxsdk/location/o;->a(D)V

    .line 20
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    iget-wide v0, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->b(D)V

    .line 21
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/k;->b()Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/location/k;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/mapbox/mapboxsdk/location/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    return p0
.end method

.method static synthetic f(Lcom/mapbox/mapboxsdk/location/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    return p0
.end method

.method static synthetic g(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/location/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    return-object p0
.end method

.method static synthetic h(Lcom/mapbox/mapboxsdk/location/k;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic i(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/location/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    return-object p0
.end method

.method static synthetic j(Lcom/mapbox/mapboxsdk/location/k;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/location/m;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/m;-><init>()V

    throw v0
.end method

.method static synthetic k(Lcom/mapbox/mapboxsdk/location/k;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/o;->b()V

    .line 4
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->n()V

    return-void
.end method

.method static synthetic l(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/maps/n$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/k;->D:Lcom/mapbox/mapboxsdk/maps/n$e;

    return-object p0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->m()V

    return-void
.end method

.method private m()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->s:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/k;->D:Lcom/mapbox/mapboxsdk/maps/n$e;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$e;)V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/k;->E:Lcom/mapbox/mapboxsdk/maps/n$c;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$c;)V

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->v:Lcom/mapbox/mapboxsdk/location/e0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/e0;->a()V

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    if-eqz v0, :cond_2

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/k;->g:Le/m/a/a/d/h;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/k;->h:Le/m/a/a/d/d;

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 12
    invoke-interface {v0, v2, v3, v4}, Le/m/a/a/d/c;->a(Le/m/a/a/d/h;Le/m/a/a/d/d;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mbgl-LocationComponent"

    const-string v3, "Unable to request location updates"

    .line 13
    invoke-static {v2, v3, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/location/k;->a(I)V

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->r()V

    goto :goto_1

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->s()V

    .line 18
    :goto_1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->p()V

    .line 19
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/k;->b(Z)V

    .line 20
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->o()V

    :cond_4
    :goto_2
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->v:Lcom/mapbox/mapboxsdk/location/e0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/e0;->b()V

    .line 4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->j:Lcom/mapbox/mapboxsdk/location/b;

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/k;->b(Z)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->s()V

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/i;->a()V

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->h:Le/m/a/a/d/d;

    invoke-interface {v0, v1}, Le/m/a/a/d/c;->b(Le/m/a/a/d/d;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->D:Lcom/mapbox/mapboxsdk/maps/n$e;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/n$e;)V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->E:Lcom/mapbox/mapboxsdk/maps/n$c;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/n$c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->j:Lcom/mapbox/mapboxsdk/location/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/location/b;->a()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/k;->a(F)V

    return-void
.end method

.method private p()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->i:Le/m/a/a/d/d;

    invoke-interface {v0, v1}, Le/m/a/a/d/c;->a(Le/m/a/a/d/d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/k;->b()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/k;->b(Landroid/location/Location;Z)V

    :goto_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/o;->d()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/k;->s:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/o;->e()V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Z)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/i;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Z)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/i;->e()V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Z)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/o;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/j;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(Ljava/util/Set;)V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    .line 6
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/location/j;->b()I

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/i;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/i;->d()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/j;->b()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/k;->a(ILcom/mapbox/mapboxsdk/location/y;)V

    return-void
.end method

.method public a(IJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V
    .locals 10
    .param p4    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/mapbox/mapboxsdk/location/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 13
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 14
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/k;->n:Landroid/location/Location;

    new-instance v9, Lcom/mapbox/mapboxsdk/location/k$k;

    const/4 v2, 0x0

    move-object/from16 v4, p7

    invoke-direct {v9, p0, v4, v2}, Lcom/mapbox/mapboxsdk/location/k$k;-><init>(Lcom/mapbox/mapboxsdk/location/k;Lcom/mapbox/mapboxsdk/location/y;Lcom/mapbox/mapboxsdk/location/k$b;)V

    move v2, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/mapbox/mapboxsdk/location/j;->a(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/k;->b(Z)V

    return-void
.end method

.method public a(ILcom/mapbox/mapboxsdk/location/y;)V
    .locals 8
    .param p2    # Lcom/mapbox/mapboxsdk/location/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v2, 0x2ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/location/k;->a(IJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;ZLcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0, p3}, Lcom/mapbox/mapboxsdk/location/k;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 19
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/o;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 22
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 23
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->v:Lcom/mapbox/mapboxsdk/location/e0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/e0;->a(Z)V

    .line 24
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->v:Lcom/mapbox/mapboxsdk/location/e0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/e0;->a(J)V

    .line 25
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/i;->a(F)V

    .line 26
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/i;->b(Z)V

    .line 27
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/i;->a(Z)V

    .line 28
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->r()V

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->s()V

    .line 31
    :goto_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/location/x;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/location/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Le/m/a/a/d/c;)V
    .locals 3
    .param p1    # Le/m/a/a/d/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->h:Le/m/a/a/d/d;

    invoke-interface {v0, v1}, Le/m/a/a/d/c;->b(Le/m/a/a/d/d;)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    :cond_0
    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->g:Le/m/a/a/d/h;

    invoke-virtual {v0}, Le/m/a/a/d/h;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/k;->B:J

    .line 37
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    .line 38
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->t:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->r:Z

    if-eqz v0, :cond_2

    .line 39
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->p()V

    .line 40
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->g:Le/m/a/a/d/h;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->h:Le/m/a/a/d/d;

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 42
    invoke-interface {p1, v0, v1, v2}, Le/m/a/a/d/c;->a(Le/m/a/a/d/h;Le/m/a/a/d/d;Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/k;->B:J

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->l()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->k()V

    :goto_0
    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->n:Landroid/location/Location;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->m:Lcom/mapbox/mapboxsdk/location/i;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(I)V

    return-void
.end method

.method public c()Le/m/a/a/d/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->f:Le/m/a/a/d/c;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/o;->a(I)V

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->c(Z)V

    .line 5
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k;->b(Z)V

    return-void
.end method

.method public d()Le/m/a/a/d/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->j()V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->g:Le/m/a/a/d/h;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->p:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->c:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->k:Lcom/mapbox/mapboxsdk/location/o;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->c:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/o;->a(Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k;->l:Lcom/mapbox/mapboxsdk/location/j;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 6
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->m()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->s:Z

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->m()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->n()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/k;->n()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/k;->s:Z

    return-void
.end method
