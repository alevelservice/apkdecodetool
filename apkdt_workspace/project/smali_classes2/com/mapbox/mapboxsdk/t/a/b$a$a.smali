.class Lcom/mapbox/mapboxsdk/t/a/b$a$a;
.super Ljava/lang/Object;
.source "AnnotationManager.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Style$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/t/a/b$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/t/a/b$a;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b$a$a;->a:Lcom/mapbox/mapboxsdk/t/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$a$a;->a:Lcom/mapbox/mapboxsdk/t/a/b$a;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/t/a/b$a;->c:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b$a$a;->a:Lcom/mapbox/mapboxsdk/t/a/b$a;

    iget-object v0, p1, Lcom/mapbox/mapboxsdk/t/a/b$a;->c:Lcom/mapbox/mapboxsdk/t/a/b;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/t/a/b$a;->b:Lcom/mapbox/mapboxsdk/style/sources/a;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/style/sources/a;)V

    return-void
.end method
