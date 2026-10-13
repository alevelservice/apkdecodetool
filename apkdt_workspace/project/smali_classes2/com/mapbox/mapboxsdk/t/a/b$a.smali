.class Lcom/mapbox/mapboxsdk/t/a/b$a;
.super Ljava/lang/Object;
.source "AnnotationManager.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/t/a/b;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/t/a/h;Lcom/mapbox/mapboxsdk/t/a/i;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/n;

.field final synthetic b:Lcom/mapbox/mapboxsdk/style/sources/a;

.field final synthetic c:Lcom/mapbox/mapboxsdk/t/a/b;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/style/sources/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b$a;->c:Lcom/mapbox/mapboxsdk/t/a/b;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/t/a/b$a;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/b$a;->b:Lcom/mapbox/mapboxsdk/style/sources/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$a;->a:Lcom/mapbox/mapboxsdk/maps/n;

    new-instance v1, Lcom/mapbox/mapboxsdk/t/a/b$a$a;

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/t/a/b$a$a;-><init>(Lcom/mapbox/mapboxsdk/t/a/b$a;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/Style$c;)V

    return-void
.end method
