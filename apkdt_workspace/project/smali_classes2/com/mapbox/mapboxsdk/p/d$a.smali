.class public Lcom/mapbox/mapboxsdk/p/d$a;
.super Ljava/lang/Object;
.source "AttributionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/p/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/p/d$a;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/p/d$a;->c:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/p/d$a;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/p/d$a;->e:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/p/d$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private b([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Z)Lcom/mapbox/mapboxsdk/p/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/p/d$a;->c:Z

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/p/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/d$a;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/mapbox/mapboxsdk/p/d;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/d$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/p/d$a;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/p/d;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/p/d$a;->a:Ljava/lang/ref/WeakReference;

    iget-boolean v4, p0, Lcom/mapbox/mapboxsdk/p/d$a;->b:Z

    iget-boolean v5, p0, Lcom/mapbox/mapboxsdk/p/d$a;->c:Z

    iget-boolean v6, p0, Lcom/mapbox/mapboxsdk/p/d$a;->d:Z

    iget-boolean v7, p0, Lcom/mapbox/mapboxsdk/p/d$a;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/p/d;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;ZZZZ)V

    .line 6
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/p/d;->b()V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Using builder without providing attribution data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Z)Lcom/mapbox/mapboxsdk/p/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/p/d$a;->b:Z

    return-object p0
.end method

.method public c(Z)Lcom/mapbox/mapboxsdk/p/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/p/d$a;->d:Z

    return-object p0
.end method
