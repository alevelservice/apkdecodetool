.class public final synthetic Ltop/xy12/codetransporter/page/LoginActivity$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$2$$ExternalSyntheticLambda0;->f$0:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$2$$ExternalSyntheticLambda0;->f$0:Ljava/io/IOException;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity$2;->lambda$onFailure$0(Ljava/io/IOException;)V

    return-void
.end method
