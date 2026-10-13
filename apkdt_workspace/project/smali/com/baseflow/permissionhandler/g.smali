.class public final synthetic Lcom/baseflow/permissionhandler/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/baseflow/permissionhandler/n$a;


# instance fields
.field private final synthetic a:Lg/a/c/a/k$d;


# direct methods
.method public synthetic constructor <init>(Lg/a/c/a/k$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/permissionhandler/g;->a:Lg/a/c/a/k$d;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baseflow/permissionhandler/g;->a:Lg/a/c/a/k$d;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method
