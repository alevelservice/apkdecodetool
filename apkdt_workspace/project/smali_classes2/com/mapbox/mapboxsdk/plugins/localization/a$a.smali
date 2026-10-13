.class Lcom/mapbox/mapboxsdk/plugins/localization/a$a;
.super Ljava/lang/Object;
.source "LocalizationPlugin.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/plugins/localization/a;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/n;

.field final synthetic b:Lcom/mapbox/mapboxsdk/plugins/localization/a;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/plugins/localization/a;Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;->b:Lcom/mapbox/mapboxsdk/plugins/localization/a;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;->a:Lcom/mapbox/mapboxsdk/maps/n;

    new-instance v1, Lcom/mapbox/mapboxsdk/plugins/localization/a$a$a;

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/plugins/localization/a$a$a;-><init>(Lcom/mapbox/mapboxsdk/plugins/localization/a$a;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/Style$c;)V

    return-void
.end method
