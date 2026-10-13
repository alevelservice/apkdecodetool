.class public final synthetic Lcom/baseflow/permissionhandler/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/baseflow/permissionhandler/r$f;


# instance fields
.field private final synthetic a:Lcom/baseflow/permissionhandler/r;

.field private final synthetic b:Lcom/baseflow/permissionhandler/r$f;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/permissionhandler/r;Lcom/baseflow/permissionhandler/r$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/permissionhandler/f;->a:Lcom/baseflow/permissionhandler/r;

    iput-object p2, p0, Lcom/baseflow/permissionhandler/f;->b:Lcom/baseflow/permissionhandler/r$f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/baseflow/permissionhandler/f;->a:Lcom/baseflow/permissionhandler/r;

    iget-object v1, p0, Lcom/baseflow/permissionhandler/f;->b:Lcom/baseflow/permissionhandler/r$f;

    invoke-virtual {v0, v1, p1}, Lcom/baseflow/permissionhandler/r;->a(Lcom/baseflow/permissionhandler/r$f;Ljava/util/Map;)V

    return-void
.end method
