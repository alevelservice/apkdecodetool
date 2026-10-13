.class public Lcom/mapbox/mapboxsdk/maps/Style$b;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/Style$b$c;,
        Lcom/mapbox/mapboxsdk/maps/Style$b$d;,
        Lcom/mapbox/mapboxsdk/maps/Style$b$b;,
        Lcom/mapbox/mapboxsdk/maps/Style$b$e;,
        Lcom/mapbox/mapboxsdk/maps/Style$b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/style/sources/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/Style$b$e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/Style$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/Style$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/Style$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/maps/Style$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/maps/Style$b;)Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->d:Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/q;)Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/Style;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mapbox/mapboxsdk/maps/Style;-><init>(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/Style$a;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Style$b;->e:Ljava/lang/String;

    return-object p0
.end method
