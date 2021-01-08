apiVersion: v1
kind: Service
metadata:
  name: ack-{{ .ServiceIDClean }}-metrics-service
  namespace: ack-system
spec:
  selector:
    control-plane: controller
  ports:
    - name: metricsport
      port: 8080
      targetPort: 8080
      protocol: TCP
  type: NodePort