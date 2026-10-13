.class Lcom/mapbox/mapboxsdk/plugins/localization/a$a$a;
.super Ljava/lang/Object;
.source "LocalizationPlugin.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Style$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/plugins/localization/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/plugins/localization/a$a;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/plugins/localization/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a$a;->a:Lcom/mapbox/mapboxsdk/plugins/localization/a$a;

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
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a$a;->a:Lcom/mapbox/mapboxsdk/plugins/localization/a$a;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;->b:Lcom/mapbox/mapboxsdk/plugins/localization/a;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/a;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a$a;->a:Lcom/mapbox/mapboxsdk/plugins/localization/a$a;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;->b:Lcom/mapbox/mapboxsdk/plugins/localization/a;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/a;)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a$a;->a:Lcom/mapbox/mapboxsdk/plugins/localization/a$a;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;->b:Lcom/mapbox/mapboxsdk/plugins/localization/a;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/a;)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;)V

    :cond_0
    return-void
.end method
