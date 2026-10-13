.class public Lg/a/c/a/e;
.super Ljava/lang/RuntimeException;
.source "FlutterException.java"


# instance fields
.field public final code:Ljava/lang/String;

.field public final details:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lg/a/c/a/e;->code:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lg/a/c/a/e;->details:Ljava/lang/Object;

    return-void
.end method
