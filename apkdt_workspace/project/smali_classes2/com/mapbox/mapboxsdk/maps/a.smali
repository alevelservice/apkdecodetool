.class Lcom/mapbox/mapboxsdk/maps/a;
.super Ljava/lang/Object;
.source "AnnotationContainer.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/c;


# instance fields
.field private final a:La/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/d<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/q;",
            "La/e/d<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/a;->a:La/e/d;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/mapbox/mapboxsdk/annotations/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a;->a:La/e/d;

    invoke-virtual {v0, p1, p2}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/a;

    return-object p1
.end method
